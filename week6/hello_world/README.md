# hello_world
LAPORAN

Praktikum 2:
![alt text](image1.png)
Penjelasan :
Menampilkan Flutter Demo Home Page Hello World.

Praktikum 3: Menerapkan Widget Dasar
1.
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nama saya Sherina Ayu Wanda Pramesti, sedang belajar Pemrograman Mobile",
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center);
  }
}
![alt text](image2.png)
Penjelasan :
Menampilkan Flutter Demo Home Page yang berisi text "Nama saya Sherina Ayu Wanda Pramesti, sedang belajar Pemrograman Mobile".
2.
import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("logo_polinema.jpg")
    );
  }
}
![alt text](image3.png)
Penjelasan :
Menampilkan Flutter Demo Home Page yang berisi gambar logo polinema yang berada di folder assets.

Praktikum 4: Menerapkan Widget Material Design dan iOS Cupertino
Langkah 1: Cupertino Button dan Loading Bar
return MaterialApp(
      home: Container(
        margin: const EdgeInsets.only(top: 30),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: const Text("Contoh button"),
              onPressed: () {},
            ),
            const CupertinoActivityIndicator(),
          ],
        ),
      ),
    );

const CupertinoActivityIndicator():
CupertinoActivityIndicator adalah widget yang menunjukkan aktivitas loading atau proses yang sedang berjalan. Biasanya digunakan untuk memberikan umpan balik visual kepada pengguna saat aplikasi sedang melakukan tugas.
Langkah 2: Floating Action Button (FAB)
return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
Kode ini membuat aplikasi Flutter yang memiliki FloatingActionButton berwarna merah muda di sudut kanan bawah layar. Tombol tersebut menampilkan ikon jempol ke atas, dan akan memicu fungsi yang didefinisikan di onPressed ketika tombol ditekan.
Langkah 3: Scaffold Widget
![alt text](image4.png)
Penjelasan:
AppBar di bagian atas layar menampilkan judul "My Increment App".
Di tengah layar, terdapat teks:
You have pushed the button this many times:
0
Teks ini menunjukkan bahwa tombol belum pernah ditekan, sehingga penghitung (counter) masih di angka 0.
Langkah 4: Dialog Widget
![alt text](image5.png)
Penjelasan:
Tampilan awal memiliki sebuah tombol dengan teks "Show alert".
Ketika tombol ditekan, sebuah kotak dialog muncul di tengah layar dengan teks judul "My title", pesan "This is my message.", dan tombol OK.
Langkah 5: Input dan Selection Widget
![alt text](image6.png)
Penjelasan:
Header: "Contoh TextField" ditampilkan di bagian atas layar.
TextField: Di tengah layar terdapat sebuah kotak input dengan garis tepi dan label "Nama". Pengguna bisa mengetik ke dalam kotak ini, dan teks akan tampil dengan font default aplikasi.
Langkah 6: Date and Time Pickers
![alt text](image7.png)
Penjelasan:
-Ketika aplikasi dijalankan, layar akan menampilkan:
Tanggal saat ini (format YYYY-MM-DD), misalnya 2024-09-30.
Tombol dengan teks "Pilih Tanggal" di bawah tanggal yang ditampilkan.
Ketika Tombol "Pilih Tanggal" Ditekan:
-Saat pengguna menekan tombol "Pilih Tanggal", Date Picker akan muncul. Pengguna dapat memilih tanggal dari kalender yang disediakan.
-Setelah pengguna memilih tanggal dan menekan OK, tanggal yang dipilih akan menggantikan tanggal sebelumnya di layar.

