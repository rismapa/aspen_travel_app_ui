class Populer {
  final String imagePath;
  final String namePlace;
  final double rating;
  final String description;

  Populer(
      {required this.imagePath,
      required this.namePlace,
      required this.rating,
      required this.description});
}

List<Populer> populers = [
  Populer(
      imagePath: "assets/images/satu.png",
      namePlace: "Alley Palace",
      rating: 4.1,
      description: description),
  Populer(
      imagePath: "assets/images/dua.png",
      namePlace: "Coeurdes Alpes",
      rating: 4.5,
      description: description),
];

String description =
    "Aspen is as close as one can get to a storybook alpine town in America, offering a magical blend of natural beauty and luxury. The choose-your-own-adventure possibilities are endless, with activities such as skiing down pristine slopes, hiking through breathtaking mountain trails, indulging in world-class dining experiences, shopping at high-end boutiques, and exploring vibrant arts and cultural scenes. Whether you're seeking outdoor excitement or sophisticated leisure, Aspen has something for everyone, making it a perfect destination for both adventure enthusiasts and those looking for a peaceful retreat amidst stunning landscapes.";
