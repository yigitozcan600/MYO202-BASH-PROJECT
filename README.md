# MYO202 BASH PROJECT

## 📌 Proje Açıklaması
Bu proje, Linux Bash scripting kullanılarak sistem bilgilerini toplayan ve bu bilgileri şifreleyerek güvenli bir log dosyası oluşturan bir uygulamadır.

Çalışma sonunda sistem bilgileri `report.log` dosyasına yazılır ve kullanıcı tarafından belirlenen parola ile **GPG AES256 algoritması** kullanılarak şifrelenir. Şifrelenmiş çıktı `report.log.gpg` olarak kaydedilir.

---

## ⚙️ Kullanılan Teknolojiler
- Bash Script
- GPG (GNU Privacy Guard)
- Linux / macOS terminal komutları
- system_profiler (Mac)
- ifconfig (Mac)

---

## 🔐 Özellikler
- Sistem bilgilerini otomatik toplar (CPU, RAM, Disk, MAC vb.)
- ISO formatında tarih/saat loglama yapar
- Kullanıcıdan parola alır
- AES256 ile güvenli şifreleme yapar
- Orijinal log dosyasını işlem sonrası siler

---

## 📂 Dosya Yapısı





## 🎓 Sertifika Bağlantıları

- Docker Temelleri  
  https://www.btkakademi.gov.tr/portal/certificate/validate?certificateId=nKqhn7Lk17

- Siber Güvenlikte Linux İşletim Sistemleri  
  https://www.btkakademi.gov.tr/portal/certificate/validate?certificateId=4qgueDgMxE

- Linux Bash Script Eğitimi  
  https://credsverse.com/credentials/25db2391-4ea8-44e2-a9c7-6021c97d19e3
