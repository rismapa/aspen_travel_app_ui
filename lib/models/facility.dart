class Facility {
  final String iconPath;
  final String titleText;

  Facility({required this.iconPath, required this.titleText});
}

List<Facility> facilities = [
  Facility(iconPath: "assets/svg/wifi.svg", titleText: "Wifi"),
  Facility(iconPath: "assets/svg/dinner.svg", titleText: "Dinner"),
  Facility(iconPath: "assets/svg/tub.svg", titleText: "1 Tub"),
  Facility(iconPath: "assets/svg/pool.svg", titleText: "Pool")
];
