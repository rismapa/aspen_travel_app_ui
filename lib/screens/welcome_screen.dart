import 'dart:math';

import 'package:aspen_travel_app_ui/constants.dart';
import 'package:aspen_travel_app_ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // image
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF211B1C).withOpacity(.63),
                  const Color(0xff3B5969)
                ],
                begin: Alignment.center,
                end: Alignment.bottomCenter,
              ),
              image: const DecorationImage(
                image: AssetImage(
                  "assets/images/welcome_home.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // widget components
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // widget title text
                  Text(
                    "Aspen",
                    style: GoogleFonts.mrDafoe(
                        fontSize: 116, color: Colors.white, letterSpacing: 8.5),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // widgwet subtitle text
                      RichText(
                        text: TextSpan(
                          style: GoogleFonts.montserrat(),
                          children: const [
                            TextSpan(
                                text: "Plan your",
                                style: TextStyle(
                                  fontSize: 24,
                                )),
                            TextSpan(
                                text: "\nLuxurious \nVacation",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),

                      // widget button
                      const ButtonWidget()
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
