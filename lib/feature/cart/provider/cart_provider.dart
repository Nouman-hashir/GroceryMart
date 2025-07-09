import '../../../grocery_mart.dart';

class CartProvider with ChangeNotifier {
  final Map<ProductModel, int> _cartItems = {};

  Map<ProductModel, int> get cartItems => _cartItems;

  double get totalPrice => _cartItems.entries
      .map((e) => e.key.price * e.value)
      .fold(0, (prev, amount) => prev + amount);

  void addToCart(ProductModel product, BuildContext context) {
    if (_cartItems.containsKey(product)) {
      _cartItems[product] = _cartItems[product]! + 1;
    } else {
      _cartItems[product] = 1;
    }

    MessageHelper.showSuccessMessage(context, "${product.name} added to cart");

    notifyListeners();
  }

  void increment(ProductModel product) {
    if (_cartItems.containsKey(product)) {
      _cartItems[product] = _cartItems[product]! + 1;
      notifyListeners();
    }
  }

  void decrement(ProductModel product) {
    if (_cartItems.containsKey(product) && _cartItems[product]! > 1) {
      _cartItems[product] = _cartItems[product]! - 1;
    } else {
      _cartItems.remove(product);
    }
    notifyListeners();
  }

  void removeItem(ProductModel product) {
    _cartItems.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
