import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int selectedIndex = 0;

  final List<String> categories = [
    "For You",
    "Grocery",
    "Fashion",
    "Appliances",
    "Mobiles",
    "Electronics",
    "Smart Gadgets",
    "Home",
    "Beauty",
  ];

  final List<String> categoryIcons = [
    "assets/images/foryou.jpg",
    "assets/images/grocery.png",
    "assets/images/fashion.jpg",
    "assets/images/appliance.png",
    "assets/images/mobile.jpeg",
    "assets/images/electronics.png",
    "assets/images/gadgets.jpeg",
    "assets/images/home.jpeg",
    "assets/images/beauty.png",
    "assets/images/toy.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: const Text(
    "All Categories",
    style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    ),
    ),
    actions: [
    IconButton(
    icon: const Icon(Icons.search, color: Colors.black),
    onPressed: () {},
    ),
    Stack(
   children: [
   IconButton(
   icon: const Icon(Icons.shopping_cart, color: Colors.black),
   onPressed: () {},
    ),
    ],
    ),
    const SizedBox(width: 8),
    ],
    ),
    body: Row(
    crossAxisAlignment:
    CrossAxisAlignment.start, 
    children: [
    Container(
    width: 110,
    color: const Color(0xFFF3F4F8),
    child: ListView.builder(
    itemCount: categories.length,
    itemBuilder: (context, index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
    onTap: () {
    setState(() => selectedIndex = index);
    },
    child: Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
    color: isSelected ? Colors.white : Colors.transparent,
    border: Border(
    left: BorderSide(
    color: isSelected
    ? Colors.indigo
    : Colors.transparent,
    width: 4,
    ),
     ),
    ),
    child: Column(
    children: [
    CircleAvatar(
    radius: 25,
    backgroundColor: Colors.white,
    backgroundImage: AssetImage(categoryIcons[index]),
    ),
    const SizedBox(height: 4),
    Text(
     categories[index],
     textAlign: TextAlign.center,
        style: TextStyle(
      fontSize: 12,
     fontWeight: isSelected
      ? FontWeight.bold
        : FontWeight.normal,
          color: isSelected
          ? Colors.indigo
          : Colors.grey.shade800,
                ),
               ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 0,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recently Viewed Stores",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 103,
                      width: 500,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _storeItem(
                            "Men’s Casuals",
                            "assets/images/jeans.webp",
                          ),
                          _storeItem("Backpacks", "assets/images/bags.webp"),
                          _storeItem(
                            "Gaming Laptops",
                            "assets/images/gaming.webp",
                          ),
                          _storeItem(
                            "Smart Phones",
                            "assets/images/mobile.jpeg",
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Have you tried?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        _featureItem(
                          "SuperCoin",
                          "assets/images/supercoin.png",
                        ),
                        _featureItem("Plus Zone", "assets/images/plus.jpeg"),
                        _featureItem("Flipkart Pay", "assets/images/pay.png"),
                        _featureItem("LiveShop+", "assets/images/Live.png"),
                        _featureItem("Personal Loan", "assets/images/Loan.png"),
                        _featureItem("GenZ Trends", "assets/images/geans.webp"),
                        _featureItem("Seller", "assets/images/saller.jpeg"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _storeItem(String title, String img) {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 3)],
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(10),
              ),
              child: Image.asset(img, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 11),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _featureItem(String title, String img) {
    return Column(
      children: [
        CircleAvatar(backgroundImage: AssetImage(img), radius: 30),
        const SizedBox(height: 6),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
