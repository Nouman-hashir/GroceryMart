class ProductModel {
  final String id;

  final String name;
  final String unit;
  final double price;
  final String image;
  final String? description;
  final String? nutrition;
  final double? review;

  ProductModel({
    required this.id,
    required this.name,
    required this.unit,
    required this.price,
    required this.image,
    this.description,
    this.nutrition,
    this.review,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? json['name'],
      name: json['name'],
      unit: json['unit'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
      description: json['description'],
      nutrition: json['nutrition'],
      review: json['review'] != null
          ? (json['review'] as num).toDouble()
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'unit': unit,
    'price': price,
    'image': image,
    if (description != null) 'description': description,
    if (nutrition != null) 'nutrition': nutrition,
    if (review != null) 'review': review,
  };
}