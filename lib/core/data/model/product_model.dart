class ProductModel {
  final String image;
  final String title;
  final String subTitle;
  final double price;
  final double stars;
  final int reviews;
  final String dscription;
  final String details;
  final String hero;

  ProductModel(
      {this.price = 0.0,
      required this.hero,
      required this.details,
      this.stars = 0.0,
      this.reviews = 0,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.dscription});
}
