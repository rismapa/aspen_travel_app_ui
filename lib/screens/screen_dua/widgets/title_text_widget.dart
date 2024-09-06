import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleTextWidget extends StatelessWidget {
  final String titleTxt;

  const TitleTextWidget({
    super.key,
    required this.titleTxt,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 32,
      ),
      child: Text(
        titleTxt,
        style: GoogleFonts.montserrat(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xff232323)),
      ),
    );
  }
}
