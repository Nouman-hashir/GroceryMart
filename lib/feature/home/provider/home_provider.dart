
import '../../../grocery_mart.dart';

class HomeProvider with ChangeNotifier {
  final ProductService _service = ProductService();
  int currentIndex = 0;

  List<ProductModel> _allProducts = [];

  List<ProductModel> get offerProducts => _allProducts.take(2).toList();
  List<ProductModel> get bestProducts => _allProducts.skip(2).take(2).toList();
  List<ProductModel> get groceryProducts => _allProducts.skip(4).take(2).toList();


  Future<void> loadProducts() async {
    _allProducts = await _service.fetchProducts();
    notifyListeners();
  }
    void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  
}
