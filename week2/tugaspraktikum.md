Soal 2
Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!
Flutter secara eksklusif menggunakan Dart sebagai bahasa pemrogramannya. Dart dan Flutter dirancang untuk bekerja secara harmonis. Fitur-fitur Dart seperti hot reload, object-oriented programming, dan async programming langsung terintegrasi dengan Flutter.Lalu, lebih mudah mengoptimalkan kode, menghindari bug, dan menulis aplikasi yang lebih efisien. Dengan memanfaatkan fitur-fitur canggih flutter memungkinkan untuk mengelola widget dan layout dengan fleksibel, serta membantu mengelola state aplikasi dengan lebih baik menggunakan provider, bloc, atau state management lainnya. Dan lebih mudah mengelola navigasi antar halaman dalam aplikasi. Memahami Dart adalah pelajaran yang sangat berharga bagi setiap pengembang Flutter. Dengan menguasai Dart, akan dapat membangun aplikasi yang lebih berkualitas, lebih efisien, dan lebih mudah dipelihara.

Soal 3
Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.
- Bahasa Dart adalah inti dari framework Flutter. Kerangka kerja modern seperti Flutter membutuhkan bahasa modern tingkat tinggi agar bisa memberikan pengalaman terbaik kepada pengembang, serta memungkinkan untuk membuat aplikasi seluler yang luar biasa.
- Kelebihan Dart antara lain :
--Productive tooling: merupakan fitur kakas (tool) untuk menganalisis kode, plugin IDE, dan ekosistem paket yang besar.
--Garbage collection: untuk mengelola atau menangani dealokasi memori (terutama memori yang ditempati oleh objek yang tidak lagi digunakan).
--Type annotations (opsional): untuk keamanan dan konsistensi dalam mengontrol semua data dalam aplikasi.
--Statically typed: Meskipun type annotations bersifat opsional, Dart tetap aman karena menggunakan fitur type-safe dan type inference untuk menganalisis types saat runtime. Fitur ini penting untuk menemukan bug selama kompilasi kode.
--Portability: bahasa Dart tidak hanya untuk web (yang dapat diterjemahkan ke JavaScript) tetapi juga dapat dikompilasi secara native ke kode Advanced RISC Machines (ARM) dan x86.

-Dart adalah bahasa modern yang luar biasa, mendukung lintas platform, dan memiliki tujuan umum dengan terus meningkatkan fitur-fiturnya, membuatnya lebih kekinian dan fleksibel. Itulah sebabnya tim Flutter framework memilih bahasa Dart untuk digunakan.

Eksekusi kode Dart dapat beroperasi dalam dua mode — kompilasi Just-In-Time (JIT) atau Kompilasi Ahead-Of-Time (AOT). Dijelaskan secara lebih rinci sebagai berikut:

-Kompilasi JIT adalah tempat kode sumber dikompilasi sesuai kebutuhan—Just in time. Dart VM memuat dan mengkompilasi kode sumber ke kode mesin asli (native). Pendekatan ini digunakan untuk menjalankan kode pada command line atau selama proses pengembangan aplikasi mobile yang dapat memanfaatkan fitur seperti debugging dan hot reload.
-Kompilasi AOT adalah dimana Dart VM dan kode Anda dikompilasi sebelumnya, VM bekerja lebih seperti sistem runtime Dart, yang menyediakan garbage collector dan metode-metode native dari Dart software development kit (SDK) pada aplikasi. Pendekatan ini memiliki keuntungan performa yang sangat besar dibandingkan kompilasi JIT, tetapi fitur lain seperti debugging dan hot reload tidak tersedia.
-Object orientation
Seperti kebanyakan bahasa modern, Dart dirancang untuk object-oriented (OO). Secara singkat, Bahasa OOP didasarkan pada konsep objek yang menyimpan kedua data (disebut fields) dan kode (disebut methods). Objek-objek ini dibuat dari cetak biru yang disebut class yang mendefinisikan field dan method yang akan dimiliki oleh sebuah objek.
-Dart operators
Jadi, ketika menggunakan operator seperti x == y, seolah-olah sedang memanggil

x.==(y) metode untuk melakukan perbandingan kesetaraan.
-Arithmetic operators
+ untuk tambahan.
- untuk pengurangan.
* untuk perkalian.
/ untuk pembagian.
~/ untuk pembagian bilangan bulat. Di Dart, setiap pembagian sederhana dengan / menghasilkan nilai double. Untuk mendapatkan nilai bilangan bulat, Anda perlu membuat semacam transformasi (yaitu, typecast) dalam bahasa pemrograman lain; namun Dart sudah mendukung untuk operasi ini.
% untuk operasi modulus (sisa bagi dari bilangan bulat).
-expression untuk negasi (yang membalikkan suatu nilai).

-Increment and decrement operators

++var atau var++ untuk menambah nilai variabel var sebesar 1
--var atau var-- untuk mengurangi nilai variabel var sebesar 1

-Equality and relational operators

== untuk memeriksa apakah operan sama
!= untuk memeriksa apakah operan berbeda
Untuk melakukan pengujian relasional, maka gunakan operator sebagai berikut:

> memeriksa apakah operan kiri lebih besar dari operan kanan
< memeriksa apakah operan kiri lebih kecil dari operan kanan
>= memeriksa apakah operan kiri lebih besar dari atau sama dengan operan kanan
<= memeriksa apakah operan kiri kurang dari atau sama dengan operan kanan

-Logical operators
!expression negasi atau kebalikan hasil ekspresi—yaitu, true menjadi false dan false menjadi true.
|| menerapkan operasi logika OR antara dua ekspresi.
&& menerapkan operasi logika AND antara dua ekspresi.

Contoh penggunaan Dart:
void main() { 
   for (int i = 0; i < 5; i++) { 
    print('hello ${i + 1}'); 
  } 
}
Output:
hello 1 
hello 2 
hello 3 
hello 4 
hello 5
