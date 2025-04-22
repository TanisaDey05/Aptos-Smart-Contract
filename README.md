**Aptos SimpleVoting – A Decentralized Voting Smart Contract**

## 📄 Project Description  
**SimpleVoting** is a lightweight, secure, and transparent voting system deployed on the **Aptos blockchain**. This decentralized smart contract enables users to create custom polls with multiple options and allows participants to cast their votes in a trustless environment. 

Built with simplicity and security in mind, SimpleVoting ensures:
- **One vote per participant** (duplicate voting prevention)
- **Immutable records** of all voting activities
- **Clear poll management** through active/inactive status control

##
![Alt Text]("C:\Users\ASUS\Desktop\aptos\aptosSs.jpg")


---

## 🎯 Project Vision  
Our vision for SimpleVoting is to democratize decision-making processes by harnessing the power of blockchain. With this transparent and tamper-proof system, communities, DAOs, and organizations can conduct secure voting without relying on centralized authorities.

This project represents the foundation of a broader governance toolkit aimed at empowering decentralized ecosystems. SimpleVoting makes blockchain voting accessible, even to non-technical users, paving the way for scalable and trustworthy collective decision-making.

---

## 🔮 Future Scope  
While the current version covers the basics of poll creation and voting, the roadmap includes several enhancements:

- ⏱ **Time-bound Polls**: Enable start and end times for each poll  
- ⚖️ **Weighted Voting**: Base vote weight on token holdings or reputation  
- 👥 **Delegate Voting**: Allow vote delegation to trusted representatives  
- 🕵️‍♂️ **Private Voting**: Integrate zero-knowledge proofs for anonymity  
- 🔐 **Multi-signature Poll Creation**: Require multiple approvals to create a poll  
- 📢 **Result Verification**: Automate result tallying and publishing  
- 🪙 **Token-Based Voting**: Link voting rights to Aptos token ownership  
- 🖥 **Frontend UI/UX**: Develop a web-based interface for ease of interaction



## ⚙️ Contract Details  
- **Module Address**: `0xfc616a2a3d4e8dfeb3c97e9e2323e247c42988f6ed992c40370e07b574454370`  
- **Transaction Hash**: `0x2ecf2ef172fda31c10134b75891b641fcb45db13ec9ba4c9e1e67593edb3309e`  
- **Module Name**: `MyModule::SimpleVoting`  

### 🔑 Key Functions  
- `create_poll`: Initialize a new poll with a list of options  
- `vote`: Cast a vote for a selected option  

### 🚫 Error Codes  
- `E_ALREADY_VOTED (1)`: Voter has already participated in this poll  
- `E_VOTING_CLOSED (2)`: Poll is inactive and not accepting new votes  



## 🧪 How to Interact  
To participate or create polls:  
1. Set up an **Aptos wallet**  
2. Ensure you have **APT tokens** for transaction fees  
3. Use the **Aptos CLI**, or build a **frontend dApp** to interact with the smart contract
