import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Import go_router
import '../../models/item.dart';
import '../widgets/product_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      imageUrl: 'assets/gula.jpg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      imageUrl: 'assets/garam.jpg',
      stock: 20,
      rating: 4.0,
    ),
    // Tambahkan produk lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title:
            const Text('Shopping List', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ProductCard(item: item);
              },
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}



//no.4
// import 'package:flutter/material.dart';
// import '../../models/item.dart'; // Import model Item

// class HomePage extends StatelessWidget {
//   final List<Item> items = [
//     Item(
//         name: 'Gula 1 kg',
//         price: 20000,
//         imageUrl: 'assets/gula.jpg',
//         stock: 10,
//         rating: 4.5),
//     Item(
//         name: 'Garam 250 gr',
//         price: 2000,
//         imageUrl: 'assets/garam.jpg',
//         stock: 20,
//         rating: 4.0),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Shopping List'),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(8),
//         child: GridView.builder(
//           padding: const EdgeInsets.all(8),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 0.75,
//             crossAxisSpacing: 8,
//             mainAxisSpacing: 8,
//           ),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return InkWell(
//               onTap: () {
//                 Navigator.pushNamed(
//                   context,
//                   '/item',
//                   arguments: item,
//                 );
//               },
//               child: Card(
//                 elevation: 4,
//                 child: Column(
//                   children: [
//                     Hero(
//                       tag: item.name,
//                       child: Image.asset(
//                         item.imageUrl,
//                         fit: BoxFit.contain,
//                         height: 100,
//                         width: double.infinity,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         item.name,
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                     ),
//                     Text(
//                       '\Rp.${item.price}',
//                       style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//                     ),
//                     Text(
//                       'Stock: ${item.stock}',
//                       style: TextStyle(fontSize: 14, color: Colors.grey[600]),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: _buildRatingStars(item.rating),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }

//   // Fungsi untuk membangun daftar ikon bintang
//   List<Widget> _buildRatingStars(double rating) {
//     List<Widget> stars = [];
//     int fullStars = rating.floor(); // Bintang penuh
//     bool hasHalfStar =
//         rating - fullStars > 0; // Cek apakah ada setengah bintang

//     // Tambahkan bintang penuh
//     for (int i = 0; i < fullStars; i++) {
//       stars.add(const Icon(Icons.star, color: Colors.amber, size: 16));
//     }

//     // Tambahkan setengah bintang jika ada
//     if (hasHalfStar) {
//       stars.add(const Icon(Icons.star_half, color: Colors.amber, size: 16));
//     }

//     // Tambahkan bintang kosong hingga total 5 bintang
//     while (stars.length < 5) {
//       stars.add(const Icon(Icons.star_border, color: Colors.amber, size: 16));
//     }

//     return stars;
//   }
// }


//no.3
// import 'package:flutter/material.dart';
// import '../../models/item.dart'; // Import model Item

// class HomePage extends StatelessWidget {
//   // Definisi list statis dari object Item
//   final List<Item> items = [
//     Item(
//         name: 'Sugar',
//         price: 5000,
//         imageUrl: 'assets/gula.jpg', // Aset lokal
//         stock: 10,
//         rating: 4.5),
//     Item(
//         name: 'Salt',
//         price: 2000,
//         imageUrl: 'assets/garam.jpg', // Aset lokal
//         stock: 20,
//         rating: 4.0),
//     // Tambahkan item lainnya
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Shopping List'),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(8),
//         child: GridView.builder(
//           padding: const EdgeInsets.all(8),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, // Jumlah kolom
//             childAspectRatio: 0.75, // Rasio aspek untuk item grid
//             crossAxisSpacing: 8, // Jarak antar kolom
//             mainAxisSpacing: 8, // Jarak antar baris
//           ),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return InkWell(
//               onTap: () {
//                 Navigator.pushNamed(
//                   context,
//                   '/item',
//                   arguments: item,
//                 );
//               },
//               child: Card(
//                 elevation: 4,
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: Image.asset(
//                         item.imageUrl,
//                         fit: BoxFit.contain, // Mencegah gambar terpotong
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         item.name,
//                         style: const TextStyle(fontSize: 18),
//                       ),
//                     ),
//                     Text(
//                       '\$${item.price}',
//                       style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//                     ),
//                     Text(
//                       'Stock: ${item.stock}',
//                       style: TextStyle(fontSize: 14, color: Colors.grey[600]),
//                     ),
//                     Text(
//                       'Rating: ${item.rating}',
//                       style: TextStyle(fontSize: 14, color: Colors.amber),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
