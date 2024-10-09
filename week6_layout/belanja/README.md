Praktikum 5: Membangun Navigasi di Flutter
Langkah 1: Siapkan project baru
![alt text](image.png)
Langkah 2: Mendefinisikan Route
![alt text](image-1.png)
Langkah 3: Lengkapi Kode di main.dart
![alt text](image-2.png)
Langkah 4: Membuat data model
![alt text](image-3.png)
Langkah 5: Lengkapi kode di class HomePage
![alt text](image-4.png)
Langkah 6: Membuat ListView dan itemBuilder
![alt text](image-5.png)
![alt text](image-6.png)
Langkah 7: Menambahkan aksi pada ListView
![alt text](image-9.png)
![alt text](image-10.png)


Tugas Praktikum 2
1.Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.
Navigator.pushNamed(context, '/item', arguments: item);
![alt text](image-8.png)
![alt text](image-11.png)
2.Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)
final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
![alt text](image-12.png)
![alt text](image-13.png)
3.Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.
![alt text](image-15.png)
![alt text](image-14.png)
![alt text](image-16.png)
![alt text](image-17.png)
4.Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations
![alt text](image-19.png)
![alt text](image-20.png)
![alt text](image-21.png)
5.Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
![alt text](image-22.png)

6.Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!
![alt text](image-23.png)
