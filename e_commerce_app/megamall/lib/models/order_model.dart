class OrderModel {
  final String productName;
  final String productImage;
  final double price;
  final String date;
  final String status;

  OrderModel({
    required this.productName,
    required this.productImage,
    required this.price,
    required this.date,
    required this.status,
  });
}