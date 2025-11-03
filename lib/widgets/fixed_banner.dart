import 'package:flutter/material.dart';

class FixedBanner extends StatelessWidget {
  const FixedBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, 
      width: double.infinity, 
      decoration: BoxDecoration(
        color: const Color(0xFF6EC1C1), 
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: NetworkImage('https://hyyzo.com/blog/content/images/2024/05/flipkart-upcoming-sale.webp'),
          fit: BoxFit.cover, 
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
           
            SizedBox(height: 6),
           
          ],
        ),
      ),
    );
  }
}
