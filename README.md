# UAS IOT

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

![tampilan shiftr](https://github.com/saelsam/UAS-IOT/assets/73805179/effb7ca8-241c-4d56-98d6-f65574ebc020)

# TOPIC YANG DIGUNAKAN WOKWI DAN WEBHOOK
### WOKWI
- mrnyahya/bedroom/suhu, kelembaban, led
- mrnyahya/bathroom/suhu, kelembaban, led
- mrnyahya/kitchen/suhu, kelembaban, led
- mrnyahya/livingroom/suhu, kelembaban, led

### WEBHOOK
- namawebhook = data logging
- (#) = topic

# ALUR PROJEK
sensor DHT pada Wokwi mempublish angka suhu dan kelembaban setiap ruangan ke broker, kodular dan website database akan menerima data untuk ditampilkan. kontroling LED akan mengambil data yang dipublish kodular dikirimkan ke broker lalu LED pada wokwi akan menyala dan mati. data yang ditampilkan di website dan kodular adalah data terakhir yang dikirimkan oleh broker.

# TAMPILAN PLATFORM
### WEBSITE

![web1](https://github.com/saelsam/UAS-IOT/assets/73805179/d43dcf2a-3575-4c9a-85c0-a8a7333c3b8a)

![web2](https://github.com/saelsam/UAS-IOT/assets/73805179/ac5fcc9d-f0c6-4332-b3e4-f9dae1e6eff1)

![web3](https://github.com/saelsam/UAS-IOT/assets/73805179/d396050e-3bd3-4c7e-a7e6-a25772b7293c)

![web4](https://github.com/saelsam/UAS-IOT/assets/73805179/d9b70bb5-0edd-46dd-acbb-c15e7bcebb0e)

![web5](https://github.com/saelsam/UAS-IOT/assets/73805179/899c9cb5-b004-4538-8408-82f4a3335dc8)


### KODULAR

![tampilan kodular](https://github.com/saelsam/UAS-IOT/assets/73805179/14a8b03d-d8c7-44a0-9dba-05ab645e4930)
