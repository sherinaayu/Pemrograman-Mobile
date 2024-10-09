import 'package:flutter/material.dart';
import '../../models/item.dart'; // Import model Item
import '../widgets/footer.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Center(
        child: Text('Price: \$${item.price}'),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import '../../models/item.dart'; // Import model Item
// import '../widgets/footer.dart';

// class ItemPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Ambil item yang dikirim dari halaman sebelumnya
//     final item = ModalRoute.of(context)!.settings.arguments as Item;

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text(item.name),
//       ),
//       body: Column(
//         children: [
//           Hero(
//             tag: item.name,
//             child: Image.asset(
//               item.imageUrl,
//               fit: BoxFit.contain,
//               height: 300,
//               width: double.infinity,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               item.name,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Text(
//             '\$${item.price}',
//             style: TextStyle(fontSize: 20, color: Colors.grey[600]),
//           ),
//           Text(
//             'Stock: ${item.stock}',
//             style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: _buildRatingStars(item.rating),
//           ),
//         ],
//       ),
//     );
//   }

//   // Fungsi yang sama untuk membangun daftar ikon bintang
//   List<Widget> _buildRatingStars(double rating) {
//     List<Widget> stars = [];
//     int fullStars = rating.floor();
//     bool hasHalfStar = rating - fullStars > 0;

//     for (int i = 0; i < fullStars; i++) {
//       stars.add(const Icon(Icons.star, color: Colors.amber, size: 24));
//     }

//     if (hasHalfStar) {
//       stars.add(const Icon(Icons.star_half, color: Colors.amber, size: 24));
//     }

//     while (stars.length < 5) {
//       stars.add(const Icon(Icons.star_border, color: Colors.amber, size: 24));
//     }

//     return stars;
//   }
// }



// //no.3
// // import 'package:flutter/material.dart';
// // import '../../models/item.dart'; // Pastikan untuk mengimpor model Item

// // class ItemPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     // Mendapatkan argumen yang dikirim dari HomePage
// //     final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(itemArgs.name), // Menggunakan nama item sebagai judul
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Image.network(itemArgs.imageUrl), // Menampilkan gambar produk
// //             Text('Item: ${itemArgs.name}', style: TextStyle(fontSize: 24)),
// //             Text('Price: \$${itemArgs.price.toStringAsFixed(2)}',
// //                 style: TextStyle(fontSize: 20)),
// //             Text('Stock: ${itemArgs.stock}', style: TextStyle(fontSize: 20)),
// //             Text('Rating: ${itemArgs.rating}',
// //                 style: TextStyle(fontSize: 20, color: Colors.amber)),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
