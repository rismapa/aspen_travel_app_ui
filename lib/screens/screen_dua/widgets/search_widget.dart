import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16, right: 5),
            child: SvgPicture.asset(
              "assets/svg/search.svg",
              height: 16,
            ),
          ),
          hintText: "Find things to do",
          hintStyle:
              GoogleFonts.montserrat(fontSize: 13, color: Color(0xffB8B8B8)),
          filled: true,
          fillColor: const Color(0xffF3F8FE),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Color(0xffF3F8FE),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: const Color(0xffA8CCF0).withOpacity(.2),
            ),
            gapPadding: 1,
          ),
        ),
      ),
    );
  }
}
