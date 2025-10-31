import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {"icon": "assets/images/shopping-bag.png", "label": "For You"},
      {"icon": "assets/images/tshirt.png", "label": "Fashion"},
      {"icon": "assets/images/smartphone.png", "label": "Mobiles"},
      {"icon": "assets/images/laptop.png", "label": "Laptop"},
      {"icon": "assets/images/lipstick.png", "label": "Beauty"},
      {"icon": "assets/images/sports.png", "label": "Sports"},
      {"icon": "assets/images/book.png", "label": "Books"},

    ];

    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final item = categories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF2F4F7),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      item["icon"]!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item["label"]!,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
