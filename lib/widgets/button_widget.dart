import 'package:aspen_travel_app_ui/constants.dart';
import 'package:aspen_travel_app_ui/screens/screen_dua/screen_dua.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String txtButton;
  final double widthButton;

  const ButtonWidget(
      {super.key, required this.txtButton, required this.widthButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: widthButton,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff1C18F2).withOpacity(.08),
            offset: const Offset(0, 4),
            blurRadius: 5,
          ),
        ],
      ),
      child: TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const ScreenDua(),
            ));
          },
          style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Text(
            txtButton,
            style: GoogleFonts.montserrat(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );
  }
}
