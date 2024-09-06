import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: GoogleFonts.montserrat(fontSize: 14),
              ),
              Text(
                "Aspen",
                style: GoogleFonts.montserrat(
                    fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset("assets/svg/location.svg"),
              Text(
                "Aspen, USA",
                style: GoogleFonts.montserrat(
                  fontSize: 12,
                  color: Color(0xff606060),
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              SvgPicture.asset("assets/svg/arrow_down.svg"),
            ],
          )
        ],
      ),
    );
  }
}
