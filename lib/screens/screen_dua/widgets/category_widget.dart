import 'package:aspen_travel_app_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<String> categories = [
    "Locations",
    "Hotels",
    "Food",
    "Adventure",
    "Adventure"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 32,
          left: 20,
        ),
        child: SizedBox(
          height: 41,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 28),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: selectedIndex == index
                      ? BoxDecoration(
                          color: const Color(0xffF3F8FE),
                          borderRadius: BorderRadius.circular(33))
                      : null,
                  child: Text(
                    categories[index],
                    style: selectedIndex == index
                        ? GoogleFonts.montserrat(
                            fontSize: 14,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold)
                        : GoogleFonts.montserrat(
                            fontSize: 14, color: const Color(0xffB8B8B8)),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
