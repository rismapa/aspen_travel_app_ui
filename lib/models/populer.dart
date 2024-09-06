class Populer {
  final String imagePath;
  final String namePlace;
  final double rating;

  Populer(
      {required this.imagePath, required this.namePlace, required this.rating});
}

List<Populer> populers = [
  Populer(
      imagePath: "assets/images/satu.png",
      namePlace: "Alley Palace",
      rating: 4.1),
  Populer(
      imagePath: "assets/images/dua.png",
      namePlace: "Coeurdes Alpes",
      rating: 4.5),
];
