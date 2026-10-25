# Experiment 5: File Transfer Between Virtual Machines using SCP / WinSCP

## Aim
Procedure to transfer files from one virtual machine to another virtual machine using SCP / WinSCP.

---

## Step 1: Set up VirtualBox NAT Network

As shown in lab manual (Page 23):
1. In Oracle VirtualBox Manager, click **File** -> **Tools** -> **Network Manager** (or **Preferences** -> **Network**).
2. Go to **NAT Networks** tab and click **Create** (+ icon).
3. Name the network: `VM Box Network`.
4. Set IPv4 Prefix / CIDR: `172.162.2.0/24` (or default `10.0.2.0/24`).
5. Ensure **Enable DHCP** is checked and click **Apply**.
6. For both Ubuntu VMs:
   - Select VM -> Click **Settings** -> **Network**.
   - Attached to: **NAT Network**.
   - Name: Select `VM Box Network`.
   - Click **OK**.

---

## Step 2: Configure OpenSSH & Get IP in Linux Terminal

Open terminal in your Linux VM and run:
```bash
# 1. Update and install OpenSSH server and net-tools
sudo apt update
sudo apt install -y openssh-server net-tools

# 2. Check the IP address of this VM (e.g., 10.0.2.15 or 172.162.2.x)
ifconfig
```
Note down the `inet` address under `enp0s3` (e.g., `10.0.2.15` as shown in Page 25 of the lab manual).

---

## Step 3: Create and Transfer File via SCP

In the first VM:
```bash
# 1. Create file
touch transfer.txt
echo "Cloud Computing Experiment 5 - SCP File Transfer Test" > transfer.txt

# 2. Transfer to second VM using SCP:
scp transfer.txt <username>@<target_vm_ip>:/home/<username>/
```
On the second VM, verify:
```bash
ls -l /home/<username>/transfer.txt
cat /home/<username>/transfer.txt
```

---

## Step 4: Transfer using WinSCP (Windows Host to VM)

As demonstrated in Page 24 of the lab manual:
1. Download and install **WinSCP** on Windows: [https://winscp.net/](https://winscp.net/)
2. Open WinSCP Login dialog:
   - **File protocol**: `SFTP`
   - **Host name**: Your VM's IP address (e.g., `10.0.2.15` or forwarded port `127.0.0.1`)
   - **Port number**: `22`
   - **User name**: Your Linux VM username
   - **Password**: Your Linux VM password
3. Click **Login**.
4. The left panel shows your Windows local path: `C:\Users\Nancy\Documents`.
5. The right panel shows your VM directory `/home/<username>/`.
6. Drag and drop `transfer.txt` between Windows and Linux.

---

## Step 5: Screenshot Checklist for Proof

Save proof screenshots into `Exp5_VM_FileTransfer_SCP/proof_screenshots/`:
- [ ] **Screenshot 1 (Linux Terminal)**: Terminal showing `sudo apt install openssh-server` and `ifconfig` displaying IP address `10.0.2.15` (matching Page 25).
- [ ] **Screenshot 2 (WinSCP Login)**: WinSCP login dialog filled with Host `10.0.2.15`, Port `22`, and Username (matching Page 24 top screenshot).
- [ ] **Screenshot 3 (WinSCP File Transfer Window)**: WinSCP dual-pane interface showing `C:\Users\Nancy\Documents` on the left and remote VM files on the right with `transfer.txt` visible (matching Page 24 bottom screenshot).
