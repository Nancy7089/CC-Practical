# Experiment 4: Install Virtual Machine (Oracle VirtualBox & Linux)

## Aim
To install a Virtual Machine using Oracle VirtualBox and Linux (Ubuntu / Kali Linux).

---

## Step-by-Step Procedure

### 1. Download & Install Oracle VirtualBox
1. Download Oracle VM VirtualBox installer for Windows from: [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
2. Run the installer:
   - Follow setup wizard (Welcome to Oracle VirtualBox Installer).
   - Keep default settings and click **Next -> Install**.
3. Launch Oracle VirtualBox Manager from your Start Menu / Desktop.

### 2. Create a New Virtual Machine
1. In Oracle VirtualBox Manager, click the **New** icon (blue/yellow icon on toolbar).
2. Configure **Virtual machine name and operating system**:
   - **Name**: `Ubuntu`
   - **Folder**: `C:\Users\Nancy\VirtualBox VMs` *(Proves execution on your personal laptop)*
   - **ISO Image**: Select your downloaded Ubuntu/Kali ISO (e.g., `ubuntu-24.04-desktop-amd64.iso`)
   - **Type**: `Linux`
   - **Version**: `Ubuntu (64-bit)` / `Debian (64-bit)`
   - Check **Skip Unattended Installation** (or proceed with unattended guest OS setup).
3. Click **Next**.

### 3. Specify Virtual Hardware
1. **Base Memory (RAM)**: Set to **4096 MB – 5212 MB** (green zone for safety).
2. **Processors (CPUs)**: Set to **2 to 4 CPUs**.
3. Enable EFI if required (optional).
4. Click **Next**.

### 4. Specify Virtual Hard Disk
1. Select **Create a Virtual Hard Disk Now**.
2. **Disk Size**: **25.00 GB**.
3. Hard disk file type: **VDI (VirtualBox Disk Image)**.
4. Allocation: Dynamically allocated.
5. Click **Finish**.

### 5. Launch and Install Linux
1. Select the created VM in VirtualBox Manager and click **Start** (green arrow).
2. Follow the on-screen Linux installer prompts.
3. Once installation finishes, restart the VM and verify the Linux desktop GUI appears.

---

## Screenshot Checklist for Lab Submission

Save proof screenshots into `Exp4_VirtualMachine_Setup/proof_screenshots/`:
- [ ] **Screenshot 1**: Oracle VirtualBox Installer window (*"Welcome to the Oracle VirtualBox Installer"*).
- [ ] **Screenshot 2**: VirtualBox Manager home screen showing the Welcome / Manager dashboard.
- [ ] **Screenshot 3**: "Create Virtual Machine" wizard showing `VM Name: Ubuntu` and `VM Folder: C:\Users\Nancy\VirtualBox VMs` (Crucial proof showing your username).
- [ ] **Screenshot 4**: Hardware settings showing Memory (e.g., 4918 MB or 5212 MB) and CPU sliders.
- [ ] **Screenshot 5**: Virtual Hard Disk screen showing 25.00 GB VDI disk.
- [ ] **Screenshot 6**: VirtualBox Manager main panel displaying VM details (General, System, Display, Storage, Audio, Network).
- [ ] **Screenshot 7**: Running Linux desktop screen (Ubuntu or Kali Linux GUI with desktop wallpaper and app launcher).
