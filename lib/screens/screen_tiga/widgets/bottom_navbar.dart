import 'package:aspen_travel_app_ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Color(0xff232323),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "\$199",
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    color: Color(0xff2DD7A4),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const ButtonWidget(
            txtButton: "Book Now",
            widthButton: 223,
          )
        ],
      ),
    );
  }
}
