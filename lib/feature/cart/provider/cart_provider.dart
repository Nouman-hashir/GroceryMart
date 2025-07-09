
import '../../../grocery_mart.dart';

class CartProvider with ChangeNotifier {
  final CartStorageService _storageService;

  // Internal cart map
  final Map<String, CartItem> _cartItems = {};

  CartProvider(this._storageService);

  /// Public: Map of ProductModel to quantity
  Map<ProductModel, int> get cartItems => {
        for (var item in _cartItems.values) item.product: item.quantity,
      };

  double get totalPrice => _cartItems.values
      .map((item) => item.product.price * item.quantity)
      .fold(0, (prev, curr) => prev + curr);

  Future<void> loadCart() async {
    final items = await _storageService.loadCart();
    _cartItems.clear();
    for (final item in items) {
      _cartItems[item.product.id] = item;
    }
    notifyListeners();
  }

  void addToCart(ProductModel product, BuildContext context) {
    if (_cartItems.containsKey(product.id)) {
      _cartItems[product.id]!.quantity++;
    } else {
      _cartItems[product.id] = CartItem(product: product, quantity: 1);
    }

    _saveCart();
    MessageHelper.showSuccessMessage(context, "${product.name} added to cart");
    notifyListeners();
  }

  void increment(ProductModel product) {
    if (_cartItems.containsKey(product.id)) {
      _cartItems[product.id]!.quantity++;
      _saveCart();
      notifyListeners();
    }
  }

  void decrement(ProductModel product) {
    if (_cartItems.containsKey(product.id)) {
      final currentQty = _cartItems[product.id]!.quantity;
      if (currentQty > 1) {
        _cartItems[product.id]!.quantity--;
      } else {
        _cartItems.remove(product.id);
      }
      _saveCart();
      notifyListeners();
    }
  }

  void removeItem(ProductModel product, BuildContext context) {
    _cartItems.remove(product.id);
    MessageHelper.showSuccessMessage(context, "${product.name} removed from cart");
    _saveCart();
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    _saveCart();
    notifyListeners();
  }

  Future<void> _saveCart() async {
    await _storageService.saveCart(_cartItems.values.toList());
  }
}
