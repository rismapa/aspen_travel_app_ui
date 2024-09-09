import 'package:aspen_travel_app_ui/models/populer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewsWidget extends StatelessWidget {
  const ReviewsWidget({
    super.key,
    required this.populer,
  });

  final Populer populer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset("assets/svg/star.svg"),
        Text(
          populer.rating.toString() + "   (355 Reviews)",
          style: GoogleFonts.montserrat(
            fontSize: 12,
            color: const Color(0xff606060),
          ),
        ),
      ],
    );
  }
}
