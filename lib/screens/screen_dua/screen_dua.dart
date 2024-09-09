import 'package:aspen_travel_app_ui/screens/screen_dua/widgets/bottom_navbar.dart';
import 'package:aspen_travel_app_ui/screens/screen_dua/widgets/category_widget.dart';
import 'package:aspen_travel_app_ui/screens/screen_dua/widgets/header.dart';
import 'package:aspen_travel_app_ui/screens/screen_dua/widgets/populer_tile_widget.dart';
import 'package:aspen_travel_app_ui/screens/screen_dua/widgets/recommended_tile_widget.dart';
import 'package:aspen_travel_app_ui/screens/screen_dua/widgets/search_widget.dart';
import 'package:aspen_travel_app_ui/screens/screen_dua/widgets/title_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenDua extends StatelessWidget {
  const ScreenDua({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(),
            SearchWidget(),
            CategoryWidget(),
            TitleTextWidget(
              titleTxt: "Popular",
            ),
            PopulerTileWidget(),
            TitleTextWidget(
              titleTxt: "Recommended",
            ),
            RecommendedTile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
