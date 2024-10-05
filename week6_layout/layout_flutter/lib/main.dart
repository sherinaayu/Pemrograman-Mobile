import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Section title
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // Padding untuk seluruh bagian judul
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Kolom dimulai dari awal baris
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 8), // Padding 8 pada baris pertama teks
                  child: const Text(
                    'Wisata Paralayang di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // Warna teks abu-abu
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star, // Ikon bintang
            color: Colors.red, // Warna merah untuk ikon
          ),
          const Text('41'), // Teks dengan jumlah ulasan
        ],
      ),
    );

    // Warna dari tema aplikasi
    Color color = Theme.of(context).primaryColor;

    // Section button
    Widget buttonSection = Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, // Membagi ruang kosong secara merata
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'), // Tombol 'CALL'
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'), // Tombol 'ROUTE'
        _buildButtonColumn(color, Icons.share, 'SHARE'), // Tombol 'SHARE'
      ],
    );

    // Section text
    Widget textSection = Container(
      padding: const EdgeInsets.all(32), // Padding untuk seluruh bagian teks
      child: const Text(
        'Paralayang di Batu adalah salah satu destinasi wisata petualangan yang populer di Jawa Timur. Bayangkan saja, Anda bisa terbang layang di udara sambil menikmati pemandangan indah Kota Batu dan sekitarnya dari ketinggian. Sensasi adrenalin yang memacu ditambah keindahan alam yang menakjubkan, membuat pengalaman paralayang ini tak terlupakan.',
        softWrap: true, // Teks akan membungkus secara otomatis
      ),
    );

    // Gambar dari aset lokal
    Widget imageSection = Image.asset(
      'assets/img.jpeg', // Pastikan path ini benar
      fit: BoxFit.cover, // Gambar menyesuaikan ruang yang tersedia
    );

    return MaterialApp(
      title: 'Sherina Ayu(2241720130)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Layout Demo'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/img.jpeg',
                width: 600,
                height: 240,
                fit: BoxFit.cover), // Gambar di bagian paling atas
            titleSection, // Bagian judul
            buttonSection, // Bagian tombol
            textSection, // Bagian teks
          ],
        ),
      ),
    );
  }

  // Metode untuk membangun tombol dengan ikon dan label
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color), // Ikon dengan warna yang diatur
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color, // Warna teks yang sesuai dengan ikon
            ),
          ),
        ),
      ],
    );
  }
}
