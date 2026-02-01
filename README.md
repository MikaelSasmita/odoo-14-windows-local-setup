# Odoo 14 Local Setup on Windows

This repository documents my personal experience setting up Odoo 14 on Windows (local development) from scratch.
The purpose is learning, documentation, and future reference, including common mistakes and troubleshooting.

⚠️ This setup is for learning & development, not production.

## 📦 Software & Installer Used

| Software        | Version                 |
|-----------------|------------------------|
| Python          | 3.7.9                  |
| PostgreSQL      | 13.7                   |
| Odoo            | 14.0 (from GitHub source) |
| Git             | 2.35.1                 |
| Node.js         | v16.16.0               |
| Java            | JDK 8u281              |
| wkhtmltopdf     | 0.12.6                 |
| PyCharm Community | 2022.1.3             |
| Apache Tomcat   | 10.0.8                 |
| DBeaver         | 22.3.5                 |
| psqlODBC        | x64                     |

## 📁 Environment Preparation

### 1️⃣ Install Python
- Install python-3.7.9-amd64.exe
- Check: Add Python to PATH
- Manually add to Environment Variables:
  C:\Users\<user>\AppData\Local\Programs\Python\Python37
  C:\Users\<user>\AppData\Local\Programs\Python\Python37\Scripts
- Verify:
  python --version
  pip --version


### 2️⃣ Install Git
- Install Git-2.35.1.2-64-bit.exe
- Verify:
  git --version


### 3️⃣ Install Java
- Install JavaSetup8u281.exe
- (Optional) set JAVA_HOME

### 4️⃣ Install Node.js
- Install node-v16.16.0-x64.msi
- Verify:
  node -v
  npm -v

### 5️⃣ Install wkhtmltopdf
- Install wkhtmltox-0.12.6-1.msvc2015-win64.exe
- Add to PATH:
  C:\Program Files\wkhtmltopdf\bin


### 6️⃣ Install PostgreSQL
- Install postgresql-13.7-1-windows-x64.exe
- Configuration:
- Port: 5432
- Superuser password: openpgpwd
- Add PostgreSQL bin to PATH:
  C:\Program Files\PostgreSQL\13\bin

### 🐘 PostgreSQL Configuration
- Create Odoo Database User
- Open Command Prompt:
  createuser -U postgres -P -s -e openpg
- Password: openpgpwd

⚠️ Do NOT use postgres user directly for Odoo.

### 🧩 Additional Tools Installation
Install sequentially:
- Apache Tomcat (user: admin, password: openpgpwd)
- psqlODBC
- DBeaver
- PyCharm Community

### 📂 Odoo Source Code
- Download Odoo 14 from GitHub
- Extract to local directory (example):
  D:\ODOO Dev\odoo-14.0


### ⚙️ Odoo Configuration
- Place config file inside Odoo folder: `odoo_config.conf`
- Example `addons_path`:
  addons_path = D:\...\odoo-14.0\addons,
  D:\...\odoo-14.0\odoo,
  D:\...\odoo-14.0\odoo\addons
- Database section:
  db_user = openpg
  db_password = openpgpwd
  db_port = 5432


### 🧠 PyCharm Setup
- Open PyCharm
- Open Existing Project → select Odoo directory
- Set Python Interpreter → Python 3.7
- Run → Edit Configurations:
  - Script path: 
  odoo-bin
  - Working directory: 
  Odoo folder
- Parameters: `-c odoo_config.conf`

### ▶️ Running Odoo
Inside PyCharm terminal:
pip install -r requirements.txt
python.exe -m pip install --upgrade pip

Run:
python odoo-bin -c odoo_config.conf

If missing modules:
pip install <module_name>

Repeat until no ModuleNotFoundError.

### 🌐 Access Odoo
Open browser:
http://localhost:8088

If successful, Odoo database creation screen will appear.