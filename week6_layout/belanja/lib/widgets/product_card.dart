import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Import go_router
import '../../models/item.dart';

class ProductCard extends StatelessWidget {
  final Item item;

  const ProductCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Use context.go() to navigate
        context.go('/item', extra: item); // Passing item as extra
      },
      child: Card(
        elevation: 4,
        child: Column(
          children: [
            Image.asset(
              item.imageUrl,
              fit: BoxFit.cover,
              height: 100,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.name,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Text(
              '\$${item.price}',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            Text(
              'Stock: ${item.stock}',
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => Icon(
                  index < item.rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import '../../models/item.dart';
// import 'rating_stars.dart';

// class ProductCard extends StatelessWidget {
//   final Item item;

//   const ProductCard({required this.item});

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.pushNamed(
//           context,
//           '/item',
//           arguments: item,
//         );
//       },
//       child: Card(
//         elevation: 6,
//         shadowColor: Colors.grey.withOpacity(0.3),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//         child: Column(
//           children: [
//             Hero(
//               tag: item.name,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Image.asset(
//                   item.imageUrl,
//                   fit: BoxFit.contain,
//                   height: 100,
//                   width: double.infinity,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 item.name,
//                 style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),
//             ),
//             Text(
//               '\$${item.price}',
//               style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//             ),
//             Text(
//               'Stock: ${item.stock}',
//               style: TextStyle(fontSize: 14, color: Colors.grey[600]),
//             ),
//             RatingStars(rating: item.rating), // Tampilkan rating bintang
//           ],
//         ),
//       ),
//     );
//   }
// }
