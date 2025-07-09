
class ProductModel {
  final String name;
  final String unit;
  final double price;
  final String image;

  ProductModel({
    required this.name,
    required this.unit,
    required this.price,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['name'],
      unit: json['unit'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'name': name,
        'unit': unit,
        'price': price,
        'image': image,
      };
}
