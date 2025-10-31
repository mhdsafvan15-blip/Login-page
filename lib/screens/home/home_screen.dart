import 'package:flutter/material.dart';

import '../../widgets/app_bar_section.dart';
import '../../widgets/fixed_banner.dart';
import '../../widgets/category_row.dart';
import '../../widgets/offer_card_row.dart';
import '../../widgets/recent_stores.dart';
import '../../widgets/search_bar.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 15, left: 8, right: 10, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarSection(),
            SearchBarSection(),        
            FixedBanner(),
            CategoryRow(),
            OfferCardRow(),
            RecentStores(),
          ],
        ),
      ),
    );
  }
}
