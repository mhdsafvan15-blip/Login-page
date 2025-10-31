import 'package:flutter/material.dart';

class SearchBarSection extends StatelessWidget {
      SearchBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:  Color(0xFFF2F3F6),
      ),
      child: Row(
        children: [
           Icon(Icons.search, color: Colors.grey),
           SizedBox(width: 8),
           Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for products",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(
            icon:  Icon(Icons.mic_none, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon:  Icon(Icons.camera_alt_outlined, color: Colors.grey),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}