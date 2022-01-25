class Product {
  final int id;
  final String productTitle;
  final String imageUrl;
  final String description;
  final double price;
  bool isFavourite;
  bool isCard;

  Product(
      {required this.id,
      required this.productTitle,
      required this.imageUrl,
      required this.description,
      required this.price,
      this.isFavourite = false,
      this.isCard = false});
}
