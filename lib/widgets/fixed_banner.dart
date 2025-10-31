import 'package:flutter/material.dart';

class FixedBanner extends StatelessWidget {
  const FixedBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, // ബാനറിന്റെ ഉയരം
      width: double.infinity, // സ്ക്രീൻ മുഴുവൻ വീതി
      decoration: BoxDecoration(
        color: const Color(0xFF6EC1C1), // ബാക്ക്ഗ്രൗണ്ട് കളർ
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: NetworkImage('https://hyyzo.com/blog/content/images/2024/05/flipkart-upcoming-sale.webp'),
          fit: BoxFit.cover, // ചിത്രം box-ൽ fit ചെയ്യാൻ
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
