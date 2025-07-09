
class ProductModel {
    final String id;

  final String name;
  final String unit;
  final double price;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.unit,
    required this.price,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? json['name'], 
      name: json['name'],
      unit: json['unit'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'unit': unit,
        'price': price,
        'image': image,
      };
}
