import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/product_model.dart';

class ProductService {
  Future<List<ProductModel>> fetchProducts() async {
    final String jsonString = await rootBundle.loadString(
      'assets/products.json',
    );
    final List data = json.decode(jsonString);
    return data.map((e) => ProductModel.fromJson(e)).toList();
  }
}
