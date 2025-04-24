module 0xfc616a2a3d4e8dfeb3c97e9e2323e247c42988f6ed992c40370e07b574454370::MedicalWasteAudit {
    use aptos_framework::account;
    use aptos_framework::signer;
    use std::vector;

    /// Error codes
    const E_ALREADY_AUDITED: u64 = 1;
    const E_AUDIT_CLOSED: u64 = 2;

    /// Structure to store audit information
    struct AuditRecord has key {
        creator: address,
        disposal_methods: vector<vector<u8>>,
        audit_counts: vector<u64>,
        auditors: vector<address>,
        is_active: bool
    }

    /// Creates a new audit record with the specified disposal methods
    public entry fun create_audit(
        creator: &signer,
        disposal_methods: vector<vector<u8>>
    ) {
        let creator_addr = signer::address_of(creator);
        let methods_count = vector::length(&disposal_methods);
        let audit_counts = vector::empty<u64>();
        
        // Initialize audit count for each disposal method to 0
        let i = 0;
        while (i < methods_count) {
            vector::push_back(&mut audit_counts, 0);
            i = i + 1;
        };

        let record = AuditRecord {
            creator: creator_addr,
            disposal_methods,
            audit_counts,
            auditors: vector::empty<address>(),
            is_active: true
        };

        move_to(creator, record);
    }

    /// Record an audit for a specific disposal method
    public entry fun audit(
        auditor: &signer,
        record_creator: address,
        method_index: u64
    ) acquires AuditRecord {
        let record = borrow_global_mut<AuditRecord>(record_creator);
        let auditor_addr = signer::address_of(auditor);
        
        // Check if audit process is still active
        assert!(record.is_active, E_AUDIT_CLOSED);
        
        // Check if auditor has already audited
        let i = 0;
        let auditors_len = vector::length(&record.auditors);
        while (i < auditors_len) {
            assert!(vector::borrow(&record.auditors, i) != &auditor_addr, E_ALREADY_AUDITED);
            i = i + 1;
        };
        
        // Record the audit
        let current_audits = vector::borrow_mut(&mut record.audit_counts, method_index);
        *current_audits = *current_audits + 1;
        vector::push_back(&mut record.auditors, auditor_addr);
    }
}