#!/bin/bash

# Yiğit Özcan
# 2420171050
# Sertifika 1: BURAYA_LINK
# Sertifika 2: BURAYA_LINK
# Sertifika 3: BURAYA_LINK

LOGFILE="report.log"

echo "[$(date '+%Y-%m-%dT%H:%M:%S')] Script Başlatıldı" > "$LOGFILE"

echo "===== DONANIM BİLGİLERİ =====" >> "$LOGFILE"

echo "İşlemci:" >> "$LOGFILE"
system_profiler SPHardwareDataType | grep "Processor Name" >> "$LOGFILE"

echo "" >> "$LOGFILE"

echo "RAM:" >> "$LOGFILE"
system_profiler SPHardwareDataType | grep "Memory" >> "$LOGFILE"

echo "" >> "$LOGFILE"

echo "UUID:" >> "$LOGFILE"
system_profiler SPHardwareDataType | grep "Hardware UUID" >> "$LOGFILE"

echo "" >> "$LOGFILE"

echo "MAC Bilgisi:" >> "$LOGFILE"
ifconfig en0 | grep ether >> "$LOGFILE"

echo "" >> "$LOGFILE"

read -sp "Parola giriniz (MYO+202): " PAROLA
echo ""

gpg --batch --yes \
--passphrase "$PAROLA" \
--symmetric \
--cipher-algo AES256 \
report.log

rm -f report.log

echo "Şifreleme tamamlandı. report.log.gpg oluşturuldu."