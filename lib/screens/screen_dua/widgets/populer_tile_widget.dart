import 'package:aspen_travel_app_ui/models/populer.dart';
import 'package:aspen_travel_app_ui/screens/screen_tiga/screen_tiga.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PopulerTileWidget extends StatefulWidget {
  const PopulerTileWidget({super.key});

  @override
  State<PopulerTileWidget> createState() => _PopulerTileWidgetState();
}

class _PopulerTileWidgetState extends State<PopulerTileWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, top: 12),
        child: SizedBox(
          height: 271,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: populers.length,
            itemBuilder: (context, index) {
              Populer populer = populers[index];

              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScreenTiga(populer)));
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Align(
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                    margin: const EdgeInsets.only(right: 28),
                    height: selectedIndex == index ? 271 : 240,
                    width: selectedIndex == index ? 212 : 188,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(24),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          populer.imagePath,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 12),
                            decoration: BoxDecoration(
                                color: const Color(0xff4D5652),
                                borderRadius: BorderRadius.circular(59)),
                            child: Text(
                              populer.namePlace,
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xff4D5652),
                                borderRadius: BorderRadius.circular(59)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset("assets/svg/star.svg"),
                                Text(
                                  populer.rating.toString(),
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
