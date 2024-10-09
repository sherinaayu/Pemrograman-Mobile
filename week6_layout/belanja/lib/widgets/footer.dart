import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      color: Colors.blueAccent,
      child: const Text(
        '                  Nama: Sherina Ayu | NIM: 2241720130                                          ',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
