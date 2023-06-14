# UAS IOT

*Table of Contents*
- [ANGGOTA_KELOMPOK](#ANGGOTA-KELOMPOK)
- [DESKRIPSI PROJEK](#DESKRIPSI-PROJEK)
- [BROKER YANG DIGUNAKAN](#BROKER-YANG-DIGUNAKAN)
- [TOPIC YANG DIGUNAKAN](#TOPIC-YANG-DIGUNAKAN-WOKWI-DAN-WEBHOOK)
- [ALUR PROJEK](#ALUR-PROJEK)
- [TAMPILAN PLATFORM](#TAMPILAN-PLATFORM)

# ANGGOTA KELOMPOK
- Vigo Santri Ali              2009106008
- Muhamad Rizky Nilzamyahya    2009106029
- Sael Samuel Rude'            2009106034

# DESKRIPSI PROJEK
projek ini merupakan aplikasi smarthome yang berbasis internet of things dengan menggunakan metode mqtt dan platform iot yang digunakan 
adalah kodular. projek ini menampilkan kelembaban, suhu, dan menongontrol mati nyala lampu LED yang terdiri dari 4 ruangan yaitu kitchen,
bathroom, bedroom, dan living room.

# BROKER YANG DIGUNAKAN
- https://mrnyahya.cloud.shiftr.io/




# TOPIC YANG DIGUNAKAN WOKWI DAN WEBHOOK
WOKWI
- mrnyahya/bedroom/suhu, kelembaban, led
- mrnyahya/bathroom/suhu, kelembaban, led
- mrnyahya/kitchen/suhu, kelembaban, led
- mrnyahya/livingroom/suhu, kelembaban, led

WEBHOOK
- namawebhook = data logging
- (#) = topic

# ALUR PROJEK
sensor DHT pada Wokwi mempublish angka suhu dan kelembaban setiap ruangan ke broker, kodular dan website database akan menerima data untuk ditampilkan. kontroling LED akan mengambil data yang dipublish kodular dikirimkan ke broker lalu LED pada wokwi akan menyala dan mati. data yang ditampilkan di website dan kodular adalah data terakhir yang dikirimkan oleh broker.

# TAMPILAN PLATFORM
WEBSITE



KODULAR


