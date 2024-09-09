import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  List<String> menus = [
    "assets/svg/home.svg",
    "assets/svg/ticket.svg",
    "assets/svg/heart.svg",
    "assets/svg/profile.svg"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 71, vertical: 24),
        height: 72,
        decoration: BoxDecoration(
            color: const Color(0xffFEFEFE),
            boxShadow: [
              BoxShadow(
                  color: const Color(0xff186FF2).withOpacity(.05),
                  offset: const Offset(15, -19),
                  blurRadius: 22),
            ],
            borderRadius: BorderRadius.circular(32)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: menus.map((iconPath) {
            return SvgPicture.asset(
              iconPath,
              height: 20,
            );
          }).toList(),
        ));
  }
}
