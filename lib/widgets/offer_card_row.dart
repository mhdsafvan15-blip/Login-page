import 'package:flutter/material.dart';

class OfferCardRow extends StatelessWidget {
  const OfferCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> offers = [
      {
        "image": "assets/images/offer-1.jpg",
        "title": "Tv offer Price",
        "subtitle": "Extra 45% Off*",
      },
      {
        "image": "assets/images/newbalance.jpg",
        "title": "Mens shouse",
        "subtitle": "50 - 80% Off",
      },
      {
        "image": "assets/images/apple.jpg",
        "title": "Mac Air ",
        "subtitle": "Just ₹200000",
      },
    ];

    return SizedBox(
      height: 190,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: offers.length,
        itemBuilder: (context, index) {
          final offer = offers[index];
          return Container(
            width: 150,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 18, 106, 238),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    offer["image"]!,
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  child: Text(
                    offer["title"]!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Text(
                    offer["subtitle"]!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Color.fromARGB(221, 255, 254, 254),
                    ),
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
