import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Account",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 👋 Greeting Section
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey! Tharun Kiruthik",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              "Explore ",
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              "Plus",
                              style: TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Colors.indigo,
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 6),
                      child: Row(
                        children: const [
                          Icon(Icons.currency_bitcoin, color: Colors.amber, size: 18),
                          SizedBox(width: 5),
                          Text("22"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              // 🧩 Orders, Wishlist, Coupons, Help Center
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(12),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2.5,
                  children: [
                    _buildOption(Icons.shopping_bag_outlined, "Orders"),
                    _buildOption(Icons.favorite_border, "Wishlist"),
                    _buildOption(Icons.card_giftcard_outlined, "Coupons"),
                    _buildOption(Icons.help_outline, "Help Center"),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              // 📧 Email Verification Banner
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(14),
                child: Row(
                  children: [
                    const Icon(Icons.mail_outline, color: Colors.orange),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        "Add/Verify your Email to get latest updates of your orders",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                      ),
                      onPressed: () {},
                      child: const Text("Update"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              // 💳 Credit Options
              _buildSectionTitle("Credit Options"),
              _buildListTile(Icons.credit_card, "Flipkart Pay Later",
                  "Get ₹10,000+ worth Times Prime benefits"),

              const SizedBox(height: 15),

              // ⚙️ Account Settings
              _buildSectionTitle("Account Settings"),
              _buildListTile(Icons.workspace_premium_outlined, "Flipkart Plus"),
              _buildListTile(Icons.person_outline, "Edit Profile"),
              _buildListTile(Icons.account_balance_wallet_outlined,
                  "Saved Cards & Wallet"),
              _buildListTile(Icons.location_on_outlined, "Saved Addresses"),
              _buildListTile(Icons.language_outlined, "Select Language"),
              _buildListTile(Icons.notifications_none, "Notification Settings"),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Option Button
  static Widget _buildOption(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.indigo, size: 20),
            const SizedBox(width: 6),
            Text(
              title,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Section Title
  static Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black87,
        ),
      ),
    );
  }

  // 🔹 List Tile Item
  static Widget _buildListTile(IconData icon, String title, [String? subtitle]) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Icon(icon, color: Colors.indigo),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Colors.black54),
              )
            : null,
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
