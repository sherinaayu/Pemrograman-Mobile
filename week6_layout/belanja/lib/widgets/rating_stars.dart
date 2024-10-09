import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final double rating;

  const RatingStars({required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: _buildRatingStars(),
    );
  }

  List<Widget> _buildRatingStars() {
    List<Widget> stars = [];
    int fullStars = rating.floor();
    bool hasHalfStar = rating - fullStars > 0;

    for (int i = 0; i < fullStars; i++) {
      stars.add(const Icon(Icons.star, color: Colors.amber, size: 16));
    }

    if (hasHalfStar) {
      stars.add(const Icon(Icons.star_half, color: Colors.amber, size: 16));
    }

    while (stars.length < 5) {
      stars.add(const Icon(Icons.star_border, color: Colors.amber, size: 16));
    }

    return stars;
  }
}
