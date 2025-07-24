# 🔍 DNS CAA Record Checker

This is a simple and efficient Bash script to check the **CAA (Certification Authority Authorization)** DNS records for:

- A **single domain**
- **Multiple subdomains** (from a file)

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
./dns_caa_record_check example.com
```

### 2. Check Multiple Subdomains:

```bash
./dns_caa_record_check -f subdomains.txt
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

## 📝 License

This project is licensed under the [LICENSE](https://github.com/iambuvanesh/dns_caa_record_check/blob/main/LICENSE).

---

## 👨‍💻 Author

Maintained by [@iambuvanesh](https://github.com/iambuvanesh) – Cybersecurity Researcher 🕵️‍♂️

---
