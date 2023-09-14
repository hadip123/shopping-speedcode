import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {super.key,
      required this.imageUrl,
      required this.productName,
      required this.available,
      required this.price});
  String imageUrl;
  String productName;
  String price;
  bool available;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(imageUrl)),
            const SizedBox(
              height: 10,
            ),
            Text(
              productName,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 11, 10, 100)),
            ),
            const SizedBox(
              height: 2,
            ),
            available
                ? const Text(
                    '✓ Available',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  )
                : const Text(
                    '✗ Unavailable',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
            const SizedBox(
              height: 2,
            ),
            Text(
              price,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
