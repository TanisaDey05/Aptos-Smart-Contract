**Aptos MedicalWasteAudit – A Decentralized Medical Waste Tracking Smart Contract**

## 📄 Project Description  
**MedicalWasteAudit** is a secure and transparent system deployed on the **Aptos blockchain** to track and audit medical waste disposal methods. This decentralized smart contract enables organizations to create audit records for various disposal methods and allows auditors to verify compliance in a trustless environment.

Built with accountability and transparency in mind, MedicalWasteAudit ensures:
- **Accurate tracking** of disposal methods  
- **Immutable records** of all audit activities  
- **Clear audit management** through active/inactive status control  

##
![image](https://github.com/user-attachments/assets/b6450397-b6f3-4d1b-920c-5afc773326d9)



---

## 🎯 Project Vision  
Our vision for MedicalWasteAudit is to enhance environmental compliance by leveraging blockchain technology. With this transparent and tamper-proof system, healthcare organizations, regulators, and auditors can ensure proper medical waste disposal without relying on centralized authorities.

This project represents the foundation of a broader environmental compliance toolkit aimed at promoting sustainable practices. MedicalWasteAudit makes blockchain-based auditing accessible, even to non-technical users, paving the way for scalable and trustworthy waste management.

---

## 🔮 Future Scope  
While the current version covers the basics of audit record creation and auditing, the roadmap includes several enhancements:

- ⏱ **Time-bound Audits**: Enable start and end times for each audit  
- 📊 **Detailed Reporting**: Generate comprehensive audit reports  
- 🕵️‍♂️ **Anonymous Auditing**: Integrate zero-knowledge proofs for auditor privacy  
- 🔐 **Multi-signature Audit Creation**: Require multiple approvals to create an audit record  
- 📢 **Audit Result Verification**: Automate result tallying and publishing  
- 🖥 **Frontend UI/UX**: Develop a web-based interface for ease of interaction  

## ⚙️ Contract Details  
- **Module Address**: `0xfc616a2a3d4e8dfeb3c97e9e2323e247c42988f6ed992c40370e07b574454370`  
- **Transaction Hash**: `0x89b48998bb3b77e30f924458c6bbac1a5c25b2941115d28eb2fa5a0ae0b96e4c`  
- **Module Name**: `MedicalWasteAudit`  

### 🔑 Key Functions  
- `create_audit`: Initialize a new audit record with a list of disposal methods  
- `audit`: Record an audit for a specific disposal method  

### 🚫 Error Codes  
- `E_ALREADY_AUDITED (1)`: Auditor has already participated in this audit  
- `E_AUDIT_CLOSED (2)`: Audit is inactive and not accepting new audits  

## 🧪 How to Interact  
To participate or create audit records:  
1. Set up an **Aptos wallet**  
2. Ensure you have **APT tokens** for transaction fees  
3. Use the **Aptos CLI**, or build a **frontend dApp** to interact with the smart contract
