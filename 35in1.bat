@echo off
chcp 65001
cls

:: Renk Ayarı: Yeşil
color 0A

:: Başlık
echo ****************************************
echo    HIZLI YARDIM ARACI - İBRAHİM TONCA
echo ****************************************

:MENU
echo 1. Bilgisayar Seri Numarasını, Adını, Marka ve Modelini Göster
echo 2. IP Adresini Görüntüle
echo 3. Windows Lisans Durumunu Göster
echo 4. Sistem Bilgilerini Görüntüle
echo 5. Windows Sürüm Bilgisi (winver)
echo 6. Son Format Tarihini Göster
echo 7. Disk Durumunu Kontrol Et
echo 8. Windows Güncelleme Durumunu Göster
echo 9. CPU Bilgilerini Göster
echo 10. Bellek (RAM) Kullanımını Göster
echo 11. Grup Politikalarını Güncelle (gpupdate /force)
echo 12. Kullanıcı Hesaplarını Listele
echo 13. Depolama Alanı Durumunu Göster
echo 14. Sabit Diski Tarama (chkdsk)
echo 15. Güvenlik Duvarını Kapat
echo 16. Güvenlik Duvarını Aç
echo 17. Windows Sistem Dosyalarını Onar
echo 18. Disk Temizliği Başlat(cleanmgr)
echo 19. Tüm Programları Güncelle
echo 20. Windows Store Uygulamalarını Güncelle
echo 21. Ağ DNS Önbelleğini Temizle(flushdns)
echo 22. Gereksiz Dosyaları Temizle(temp)
echo 23. RAM Optimizasyonu Yap
echo 24. Ping Testi Yap
echo 25. Tracert (Yol İzleme) Yap
echo 26. Nslookup (DNS Sorgulaması) Yap
echo 27. Netstat (Bağlantı Durumu) Göster
echo 28. ARP (Adres Çözümleme Protokolü) Tablosunu Göster
echo 29. Route (Yönlendirme Tablosu) Göster
echo 30. Nbtstat (NetBIOS Durumu) Göster
echo 31. IP Yapılandırmasını Görüntüle(all)
echo 32. IP Yapılandırmasını Serbest Bırak(release)
echo 33. IP Yapılandırmasını Yenile(renew)
echo 34. Wi-Fi Şifresini Göster
echo 35. Kayıt Defteri İncelemesi
echo 36. MAC Adresi Öğrenme
echo 37. Sürücülerin SMART Durumu
echo 38. Aktif Ekran Kartı Modeli Öğrenme
echo 39. Çalışan Programlar, Görevler. (Tasklist, Ayrı Pencerede Açılır)
echo 40. Zamanlanmış Görevleri Listele
echo 41. WI-FI Detayları
echo 42. Güç Tüketimi Analizi

echo.
echo 97. Sistem Geri Yükleme Noktası Oluştur
echo 98. Ekranı Temizle (CLS)
echo 99. Çık
echo.
set /p choice=Bir seçenek girin (1-99): 

if "%choice%"=="1" goto COMPUTER_INFO
if "%choice%"=="2" goto IP
if "%choice%"=="3" goto LICENSE
if "%choice%"=="4" goto SYSINFO
if "%choice%"=="5" goto WINVER
if "%choice%"=="6" goto LAST_FORMAT_DATE
if "%choice%"=="7" goto DISK
if "%choice%"=="8" goto WINDOWSUPDATE
if "%choice%"=="9" goto CPUINFO
if "%choice%"=="10" goto MEMORY
if "%choice%"=="11" goto GPUPDATE
if "%choice%"=="12" goto USERS
if "%choice%"=="13" goto STORAGE
if "%choice%"=="14" goto CHKDSK
if "%choice%"=="15" goto DISABLE_FIREWALL
if "%choice%"=="16" goto ENABLE_FIREWALL
if "%choice%"=="17" goto SFC
if "%choice%"=="18" goto CLEANUP
if "%choice%"=="19" goto UPDATE_PROGRAMS
if "%choice%"=="20" goto UPDATE_STORE_APPS
if "%choice%"=="21" goto CLEAR_DNS
if "%choice%"=="22" goto CLEAN_TEMP_FILES
if "%choice%"=="23" goto OPTIMIZE_RAM
if "%choice%"=="24" goto PING_TEST
if "%choice%"=="25" goto TRACERT_TEST
if "%choice%"=="26" goto NSLOOKUP_TEST
if "%choice%"=="27" goto NETSTAT_TEST
if "%choice%"=="28" goto ARP_TEST
if "%choice%"=="29" goto ROUTE_TEST
if "%choice%"=="30" goto NBTSTAT_TEST
if "%choice%"=="31" goto IPCONFIG
if "%choice%"=="32" goto RELEASE_IP
if "%choice%"=="33" goto RENEW_IP
if "%choice%"=="34" goto WIFI_PASSWORD
if "%choice%"=="35" goto REGISTRY_ANALYSIS
if "%choice%"=="36" goto GET_MAC
if "%choice%"=="37" goto SMART_STATUS
if "%choice%"=="38" goto GPU_MODEL
if "%choice%"=="39" goto TASK_LIST
if "%choice%"=="40" goto SCHEDULED_TASK
if "%choice%"=="41" goto WIFI_BROADCAST
if "%choice%"=="42" goto POWERCFG_ENERGY


if "%choice%"=="97" goto RESTORE_POINT
if "%choice%"=="98" goto CLEAN
if "%choice%"=="99" exit
goto MENU

:SILBASTAN
echo Ekranı Temizleyelim (CLS)?
echo 1. Evet
echo 2. Hayır

set /p choice1=Bir seçenek girin (1-2):

if "%choice1%"=="1" goto CLEAN
if "%choice1%"=="2" echo.
color 0A
goto MENU


:CLEAN
cls
color 0A
goto MENU



:: Bilgisayar Seri Numarası, Bilgisayar Adı, Marka ve Modelini Göster
:COMPUTER_INFO
cls
echo Bilgisayarın Seri Numarası:
wmic bios get serialnumber
echo.
echo Bilgisayar Adı:
hostname
echo.
echo Marka ve Model:
wmic computersystem get manufacturer, model
pause
goto MENU

:: IP Adresini Görüntüle
:IP
cls
echo Bilgisayarın IP Adresi:
ipconfig | findstr /i "IPv4"
pause
goto MENU

:: Windows Lisans Durumunu Göster
:LICENSE
cls
echo Windows Lisans Durumu:
slmgr /xpr
echo.
echo Windows Lisans Anahtarı:
wmic path softwarelicensingservice get OA3xOriginalProductKey
pause
goto MENU

:: Sistem Bilgilerini Görüntüle
:SYSINFO
cls
echo Sistem Bilgileri:
systeminfo
pause
goto MENU

:: Windows Sürüm Bilgisi Göster (winver)
:WINVER
cls
echo Windows Sürüm Bilgisi:
winver
pause
goto MENU

:: Son Format Tarihini Göster
:LAST_FORMAT_DATE
cls
echo Son Format Tarihi:
wmic os get installdate
pause
goto MENU

:: Disk Durumunu Kontrol Et
:DISK
cls
echo Disk Durumu:
wmic logicaldisk get caption, description, freespace, size
pause
goto MENU

:: Windows Güncelleme Durumunu Göster
:WINDOWSUPDATE
cls
echo Windows Güncelleme Durumu:
wmic qfe list brief /format:table
pause
goto MENU

:: CPU Bilgilerini Göster
:CPUINFO
cls
echo CPU Bilgileri:
wmic cpu get caption, deviceid, name, numberofcores, maxclockspeed
pause
goto MENU

:: Bellek (RAM) Kullanımını Göster
:MEMORY
cls
echo Bellek (RAM) Kullanımı:
wmic memorychip get capacity, speed, manufacturer
pause
goto MENU

:: Grup Politikalarını Güncelle (gpupdate /force)
:GPUPDATE
cls
echo Grup Politikaları Güncelleniyor...
gpupdate /force
pause
goto MENU

:: Kullanıcı Hesaplarını Listele
:USERS
cls
echo Kullanıcı Hesapları:
net user
pause
goto MENU

:: Depolama Alanı Durumunu Göster
:STORAGE
cls
echo Depolama Alanı Durumu:
wmic logicaldisk get caption, description, freespace, size
pause
goto MENU

:: Sabit Diski Tarama (chkdsk)
:CHKDSK
cls
echo Sabit diski tarıyor...
chkdsk C: /f /r /x
pause
goto MENU

:: Güvenlik Duvarını Kapat
:DISABLE_FIREWALL
cls
echo Güvenlik Duvarı devre dışı bırakılıyor...
netsh advfirewall set allprofiles state off
pause
goto MENU

:: Güvenlik Duvarını Aç
:ENABLE_FIREWALL
cls
echo Güvenlik Duvarı açılıyor...
netsh advfirewall set allprofiles state on
pause
goto MENU

:: Windows Sistem Dosyalarını Onar
:SFC
cls
echo Sistem dosyaları taranıyor...
sfc /scannow
pause
goto MENU

:: Disk Temizliği Başlat
:CLEANUP
cls
echo Disk Temizliği başlatılıyor...
cleanmgr
pause
goto MENU

:: Yüklü Programları Güncelle (winget)
:UPDATE_PROGRAMS
cls
echo Yüklü programlar güncelleniyor...
winget upgrade --all
pause
goto MENU

:: Windows Store Uygulamalarını Güncelle
:UPDATE_STORE_APPS
cls
echo Windows Store uygulamaları güncelleniyor...
powershell -Command "Get-AppxPackage | Foreach {Add-AppxPackage -Path $_.InstallLocation} "
pause
goto MENU

:: Ağ DNS Önbelleğini Temizle
:CLEAR_DNS
cls
echo DNS Önbelleği temizleniyor...
ipconfig /flushdns
pause
goto MENU

:: Gereksiz Dosyaları Temizle
:CLEAN_TEMP_FILES
cls
echo Geçici dosyalar temizleniyor...

:: %TEMP% Klasöründeki Dosyaları Sil
del /q /f /s %TEMP%\*

:: %WINDIR%\Temp Klasöründeki Dosyaları Sil
del /q /f /s %WINDIR%\Temp\*

:: Windows Temp Klasörünü Temizle
cleanmgr /sagerun:1

echo Temizlik tamamlandı.
pause
goto MENU

:: RAM Optimizasyonu Yap
:OPTIMIZE_RAM
cls
echo RAM optimizasyonu yapılıyor...
echo.
echo Çalışan işlemler sonlandırılacak...
echo.
taskkill /f /im explorer.exe
start explorer.exe
pause
goto MENU

:: Ping Testi Yap
:PING_TEST
cls
echo Ping testi yapılıyor...
set /p ip=Ping testi yapılacak IP adresini girin: 
ping %ip%
pause
goto MENU

:: Tracert (Yol İzleme) Yap
:TRACERT_TEST
cls
echo Tracert (Yol İzleme) başlatılıyor...
set /p ip=Yol izlenecek IP adresini girin: 
tracert %ip%
pause
goto MENU

:: Nslookup (DNS Sorgulaması) Yap
:NSLOOKUP_TEST
cls
echo Nslookup (DNS Sorgulaması) başlatılıyor...
set /p domain=DNS sorgusu yapılacak domain girin: 
nslookup %domain%
pause
goto MENU

:: Netstat (Bağlantı Durumu) Göster
:NETSTAT_TEST
cls
echo Netstat (Bağlantı Durumu) başlatılıyor...
netstat -an
pause
goto MENU

:: ARP Tablosunu Göster
:ARP_TEST
cls
echo ARP Tablosu başlatılıyor...
arp -a
pause
goto MENU

:: Route Tablosunu Göster
:ROUTE_TEST
cls
echo Yönlendirme Tablosu başlatılıyor...
route print
pause
goto MENU

:: NBTstat (NetBIOS Durumu) Göster
:NBTSTAT_TEST
cls
echo NBTstat (NetBIOS Durumu) başlatılıyor...
nbtstat -n
pause
goto MENU

:: IP Yapılandırmasını Göster
:IPCONFIG
cls
echo IP Yapılandırması:
ipconfig
pause
goto MENU

:: IP Yapılandırmasını Serbest Bırak
:RELEASE_IP
cls
echo IP Yapılandırması serbest bırakılıyor...
ipconfig /release
pause
goto MENU

:: IP Yapılandırmasını Yenile
:RENEW_IP
cls
echo IP Yapılandırması yenileniyor...
ipconfig /renew
pause
goto MENU

:: Wi-Fi Şifresini Göster
:WIFI_PASSWORD
cls
echo Wi-Fi Şifresi:
set /p wifi=Wi-Fi ağ adını girin: 
netsh wlan show profile name="%wifi%" key=clear | findstr /i "Key Content"
pause
goto MENU


:: Kayıt Defteri Incelemesi 

:REGISTRY_ANALYSIS

if not exist "C:\RegistryExports" mkdir "C:\RegistryExports"

:: HKEY_CURRENT_USER (HKCU) Kayitları
reg export "HKEY_CURRENT_USER\Software" "C:\RegistryExports\HKCU_Software.reg" /y
reg export "HKEY_CURRENT_USER\Control Panel" "C:\RegistryExports\HKCU_ControlPanel.reg" /y
reg export "HKEY_CURRENT_USER\Software\Microsoft\Windows\Shell\BagMRU" "C:\RegistryExports\HKCU_BagMRU.reg" /y
reg export "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" "C:\RegistryExports\HKCU_RecentDocs.reg" /y
reg export "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\UserAssist" "C:\RegistryExports\HKCU_UserAssist.reg" /y
reg export "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" "C:\RegistryExports\HKCU_RunMRU.reg" /y

:: HKEY_USERS Kayitlari
reg export "HKEY_USERS\.DEFAULT" "C:\RegistryExports\HKEY_USERS_Default.reg" /y
reg export "HKEY_USERS\S-1-5-21-<UserSID>" "C:\RegistryExports\HKEY_USERS_UserSID.reg" /y

:: HKEY_LOCAL_MACHINE (HKLM) Kayitları
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" "C:\RegistryExports\HKLM_TimeZoneInfo.reg" /y
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName" "C:\RegistryExports\HKLM_ComputerName.reg" /y
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" "C:\RegistryExports\HKLM_WindowsVersion.reg" /y
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" "C:\RegistryExports\HKLM_FileSystem.reg" /y
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\ComputerName\ComputerName" "C:\RegistryExports\HKLM_ComputerName_2.reg" /y
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "C:\RegistryExports\HKLM_AutoRun.reg" /y

:: USB Kayitları
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB" "C:\RegistryExports\HKLM_USB.reg" /y
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USBTOR" "C:\RegistryExports\HKLM_USBTOR.reg" /y
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Portable Devices\Devices" "C:\RegistryExports\HKLM_Devices.reg" /y
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\EMDMgmt" "C:\RegistryExports\HKLM_EMDMgmt.reg" /y

:: Ağ, Ağ Ayarları ve Türevleri Kayitları
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList" "C:\RegistryExports\HKLM_NetworkList.reg" /y
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces" "C:\RegistryExports\HKLM_NetworkInterfaces.reg" /y
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\LanmanServer\Shares" "C:\RegistryExports\HKLM_NetworkShares.reg" /y

:: En Son Erişilen Dosyalar
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ComDlg32\LastVisitedPIDMRU" "C:\RegistryExports\HKLM_LastVisitedFiles.reg" /y
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\TypedPaths" "C:\RegistryExports\HKLM_TypedPaths.reg" /y
reg export "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" "C:\RegistryExports\HKLM_RunApps.reg" /y

:: Depolama Sistemleri Kayitları
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\LanmanServer\Shares" "C:\RegistryExports\HKLM_LanmanShares.reg" /y
reg export "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters\Interfaces" "C:\RegistryExports\HKLM_TcpIpInterfaces.reg" /y

:: Son
color 3
echo Kayitlar "C:\RegistryExports" Konumunda Bulunmaktadır.
pause
color 0A
goto MENU



:: MAC Adresi
:GET_MAC
getmac
echo.
color 04
goto SILBASTAN
pause


:: SMART Durumu
:SMART_STATUS
wmic diskdrive get status
echo.
pause
goto MENU


:: GPU Model
:GPU_MODEL
wmic path win32_VideoController get name
echo.
pause
goto MENU


:: Tasklist
:TASK_LIST
start cmd /c "tasklist & pause"
pause
echo.
goto MENU

:: Yedekleme ve Geri Yükleme Noktası
:RESTORE_POINT
powershell -Command "Checkpoint-Computer -Description 'AIO Tarafından Oluşturuldu' -RestorePointType MODIFY_SETTINGS"
pause
echo.
goto MENU


:: Zamanlanmış Görevleri Göster
:SCHEDULED_TASK
schtasks /query /fo LIST /v
pause
echo.
goto MENU

:: Güç Tüketimini Analiz Et
:POWERCFG_ENERGY
powercfg /energy
pause
echo.
goto MENU

:: WI-FI Detayları
:WIFI_BROADCAST
netsh wlan show networks mode=bssid
pause
echo.
goto MENU