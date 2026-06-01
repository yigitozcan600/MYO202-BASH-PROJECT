
#!/bin/bash

# =========================
# İSİM SOYİSİM: Yiğit Özcan
# ÖĞRENCİ NO: 2420171050
# =========================

# SERTİFİKA BAĞLANTILARI
# 1) Docker Temelleri
# https://www.btkakademi.gov.tr/portal/certificate/validate?certificateId=nKqhn7Lk17
# 2) Siber Güvenlikte Linux İşletim Sistemleri
# https://www.btkakademi.gov.tr/portal/certificate/validate?certificateId=4qgueDgMxE
# 3) Linux Bash Script Eğitimi
# https://credsverse.com/credentials/25db2391-4ea8-44e2-a9c7-6021c97d19e3

LOG_DOSYASI="report.log"
SIFRELI_DOSYA="report.log.gpg"

# ISO formatında tarih ve saat
echo "BAŞLANGIÇ: $(date -Iseconds)" > "$LOG_DOSYASI"

# =========================
# SİSTEM BİLGİLERİ
# =========================
echo "===== SİSTEM BİLGİLERİ =====" >> "$LOG_DOSYASI"

system_profiler SPHardwareDataType >> "$LOG_DOSYASI"

echo "===== AĞ BİLGİLERİ =====" >> "$LOG_DOSYASI"
ifconfig >> "$LOG_DOSYASI"

# =========================
# KULLANICI PAROLA GİRİŞİ
# =========================
read -s -p "Parola giriniz (MYO+202): " PAROLA
echo

# Parola kontrolü
if [ "$PAROLA" != "MYO+202" ]; then
  echo "Hatalı parola!"
  exit 1
fi

# =========================
# GPG ŞİFRELEME (AES256)
# =========================
gpg --batch --yes --passphrase "$PAROLA" \
    --symmetric --cipher-algo AES256 \
    "$LOG_DOSYASI"

# Orijinal dosyayı sil
rm -f "$LOG_DOSYASI"

echo "Şifreleme tamamlandı. $SIFRELI_DOSYA oluşturuldu."
