import 'package:aspen_travel_app_ui/constants.dart';
import 'package:aspen_travel_app_ui/models/facility.dart';
import 'package:aspen_travel_app_ui/models/populer.dart';
import 'package:aspen_travel_app_ui/screens/screen_dua/widgets/title_text_widget.dart';
import 'package:aspen_travel_app_ui/screens/screen_tiga/widgets/bottom_navbar.dart';
import 'package:aspen_travel_app_ui/screens/screen_tiga/widgets/reviews_widget.dart';
import 'package:aspen_travel_app_ui/screens/screen_tiga/widgets/title.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenTiga extends StatefulWidget {
  final Populer populer;
  const ScreenTiga(this.populer, {super.key});

  @override
  State<ScreenTiga> createState() => _ScreenTigaState();
}

class _ScreenTigaState extends State<ScreenTiga> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      widget.populer.imagePath,
                      height: size.height * .45,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    TitleWidget(populer: widget.populer),
                    const SizedBox(
                      height: 6,
                    ),
                    ReviewsWidget(populer: widget.populer),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      isExpanded
                          ? widget.populer.description
                          : widget.populer.description.substring(0, 150) +
                              "...",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Color(0xff3A544F),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Row(
                        children: [
                          Text(
                            isExpanded ? "See Less" : "Read More",
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          SvgPicture.asset("assets/svg/arrow_down.svg"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Facilities",
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff232323)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 76,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: facilities.length,
                        itemBuilder: (context, index) {
                          Facility facility = facilities[index];

                          return Container(
                            margin: const EdgeInsets.only(right: 14),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xff176FF2).withOpacity(.05)),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  facility.iconPath,
                                  height: 32,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  facility.titleText,
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10, color: Color(0xffB8B8B8)),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Positioned(
                  left: 12,
                  top: 12,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xffF3F8FE),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xffB8B8B8),
                            size: 14,
                          ),
                        )),
                  ),
                ),
                Positioned(
                  top: 355,
                  right: 15,
                  child: Container(
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                        color: Color(0xffF2F7FD),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff0038FF).withOpacity(.1),
                              offset: Offset(0, 6),
                              blurRadius: 19)
                        ],
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.favorite,
                      color: Color(0xffEC5655),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbarWidget(),
    );
  }
}
