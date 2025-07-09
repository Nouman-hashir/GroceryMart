
import 'dart:convert';

import '../../grocery_mart.dart';


class CartStorageService {
  static const String _key = 'cart_items';

    Future<void> saveCart(List<CartItem> items) async {
    final prefs = await SharedPreferences.getInstance();
    final cartJson = jsonEncode(items.map((e) => e.toJson()).toList());
    await prefs.setString(_key, cartJson);
  }

  Future<List<CartItem>> loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString(_key);
    if (data == null) return [];

    final decoded = jsonDecode(data) as List<dynamic>;
    return decoded.map((e) => CartItem.fromJson(e)).toList();
  }
}
