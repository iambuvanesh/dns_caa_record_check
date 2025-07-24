---

### 📄 `README.md` – CAA Record Checker

````markdown
# 🔐 check_caa.sh - CAA DNS Record Checker

This is a simple and efficient Bash script to check the **CAA (Certification Authority Authorization)** DNS records for:

- A single domain
- Multiple subdomains (from a file)

CAA records restrict which Certificate Authorities (CAs) are allowed to issue certificates for a domain — an important security control for preventing unauthorized SSL/TLS certificates.

---

## ⚙️ Features

- ✅ Supports **single domain** or **bulk subdomain** mode
- ✅ Uses `dig` to fetch `CAA` DNS records
- ✅ Colored output for easy reading
- ✅ Minimal dependencies

---

## 📦 Requirements

- Bash (default in Linux/macOS)
- `dig` command (provided by `dnsutils`)

Install on Debian/Ubuntu:
```bash
sudo apt install dnsutils
````

---

## 🚀 Usage

### 1. Check a Single Domain:

```bash
./check_caa.sh example.com
```

### 2. Check Multiple Subdomains:

```bash
./check_caa.sh -f subdomains.txt
```

#### 📂 `subdomains.txt` Example:

```
example.com
api.example.com
mail.example.com
```

---

## 🧪 Sample Output

```bash
🔍 Checking CAA for: example.com
[+] CAA record(s) for example.com:
    - 0 issue "letsencrypt.org"

🔍 Checking CAA for: no-caa.example.com
[-] No CAA record found for no-caa.example.com
```

---

## 📁 File Structure

```
.
├── check_caa.sh       # The main Bash script
└── README.md          # This file
```

---

## 📜 License

This script is provided for educational and security research purposes. Use responsibly.

---

## 👨‍💻 Author

Developed by \[Your Name or Handle]

```

Let me know if you'd like to include:
- Auto export results to a file
- Support for `iodef` parsing
- GitHub badge or logo support
```
