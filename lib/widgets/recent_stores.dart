import 'package:flutter/material.dart';

class RecentStores extends StatelessWidget {
  const RecentStores({super.key});

  @override
  Widget build(BuildContext context) {
        List<Map<String, String>> stores = [
      {
        "image": "assets/images/jbl.webp",
        "name": "Wired Earphones",
      },
      {
        "image": "assets/images/gaming.webp",
        "name": "Other Platforms",
      },
      {
        "image": "assets/images/webcame.webp",
        "name": "Webcams",
      },
      {
        "image": "assets/images/mobile.jpeg",
        "name": "Smart Phones",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Text(
            "Recent Viewed Stores",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stores.length,
            itemBuilder: (context, index) {
              final store = stores[index];
              return Container(
                width: 120,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  color:  Color.fromARGB(255, 18, 106, 238),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(
                          store["image"]!,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Expanded(
                      flex: 1,
                      child: Text(
                        store["name"]!,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
