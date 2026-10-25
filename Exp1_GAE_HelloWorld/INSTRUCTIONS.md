# Experiment 1: Google App Engine - Hello World App in Python

## Aim
Install Google App Engine. Create a Hello world app and other simple web applications using python / java.

---

## Step 1: Run Locally in VS Code Terminal

1. Open your terminal in VS Code:
   ```powershell
   cd "c:\Users\Nancy\Desktop\Cloud Computing Practical\Cloud_Computing_Practicals\Exp1_GAE_HelloWorld"
   ```
2. Execute the python script:
   ```powershell
   python t1.py
   ```
3. Expected Output:
   ```text
   Hello World
   ```

---

## Step 2: Push to GitHub Repository (`CC-Pracs`)

1. Go to [GitHub](https://github.com/) and create a new public repository named **`CC-Pracs`**.
2. In your local terminal, navigate to the Experiment 1 folder:
   ```powershell
   cd "c:\Users\Nancy\Desktop\Cloud Computing Practical\Cloud_Computing_Practicals\Exp1_GAE_HelloWorld"
   ```
3. Initialize git, commit, and push:
   ```bash
   git init
   git add .
   git commit -m "Add Experiment 1 Hello World files"
   git branch -M main
   git remote add origin https://github.com/<your-username>/CC-Pracs.git
   git push -u origin main
   ```
   *(Replace `<your-username>` with your GitHub username)*

---

## Step 3: Run in Google Cloud Shell (Cloud Terminal Verification)

As shown in your lab manual (Page 3):
1. Open Google Cloud Shell in your browser: [https://shell.cloud.google.com](https://shell.cloud.google.com) (Free with any Gmail / Google account, no credit card required).
2. Ensure your terminal is open inside Google Cloud Shell.
3. Clone your GitHub repository:
   ```bash
   git clone https://github.com/<your-username>/CC-Pracs.git
   ```
4. Navigate into the cloned repository:
   ```bash
   cd CC-Pracs
   ls
   ```
5. Run the Python file:
   ```bash
   python3 t1.py
   ```
   or
   ```bash
   python t1.py
   ```
6. Verify output displays:
   ```text
   Hello World
   ```

---

## Step 4: Screenshot Checklist for Proof

Take the following screenshots and save them in `Exp1_GAE_HelloWorld/proof_screenshots/`:
- [ ] **Screenshot 1 (Local Terminal)**: VS Code terminal showing `python t1.py` returning `Hello World` with your local username path visible.
- [ ] **Screenshot 2 (GitHub)**: GitHub repo page showing `CC-Pracs` with `t1.py` and `README.md`.
- [ ] **Screenshot 3 (Google Cloud Shell)**: Google Cloud Shell terminal showing `git clone`, `cd CC-Pracs`, `ls`, and `python t1.py` producing `Hello World` (matching Page 3 of the lab manual).
