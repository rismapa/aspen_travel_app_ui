class Recommended {
  final String imagePath;
  final String titleTxt;
  final String duration;

  Recommended(
      {required this.imagePath,
      required this.titleTxt,
      required this.duration});
}

List<Recommended> recommendsTile = [
  Recommended(
      imagePath: "assets/images/empat.png",
      titleTxt: "Explore Aspen",
      duration: "4N/5D"),
  Recommended(
      imagePath: "assets/images/lima.png",
      titleTxt: "Luxurious Aspen",
      duration: "2N/3D")
];
