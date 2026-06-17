class ProductModel {
  final String id;
  final String name;
  final String description;
  final String image;
  final double price;
  final double rating;
  final int reviewCount;
  final String category;
  final bool isFeatured;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    required this.rating,
    required this.reviewCount,
    required this.category,
    required this.isFeatured,
  });
}