import 'package:aspen_travel_app_ui/models/recommended.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedTile extends StatelessWidget {
  const RecommendedTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 12, left: 20),
        child: SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendsTile.length,
            itemBuilder: (context, index) {
              Recommended recommended = recommendsTile[index];
              return Container(
                  margin: const EdgeInsets.only(right: 16),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffF4F4F4),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            recommended.imagePath,
                            width: 166,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            recommended.titleTxt,
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff232323)),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/svg/trending.svg"),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Hot Deal",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10,
                                    color: const Color(0xff3A544F)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 23,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 2),
                            decoration: BoxDecoration(
                              color: Color(0xff3A544F),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Text(
                              recommended.duration,
                              style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ));
            },
          ),
        ));
  }
}
