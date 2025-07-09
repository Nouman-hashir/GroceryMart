import '../../../grocery_mart.dart';

class HomeProvider with ChangeNotifier {
  final ProductService _service = ProductService();
  int currentIndex = 0;

  List<ProductModel> _allProducts = [];

  String? _selectedCategory;
  String? get selectedCategory => _selectedCategory;
  set selectedCategory(String? value) {
    _selectedCategory = value;
    notifyListeners();
  }

  List<ProductModel> get offerProducts => _allProducts.take(3).toList();
  List<ProductModel> get bestProducts => _allProducts.skip(2).take(2).toList();
  List<ProductModel> get groceryProducts =>
      _allProducts.skip(4).take(2).toList();

  // For now, just return all groceryProducts (no real filtering)
  List<ProductModel> get filteredGroceryProducts => groceryProducts;

  Future<void> loadProducts() async {
    _allProducts = await _service.fetchProducts();
    notifyListeners();
  }

  void setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  final List<CategoryModel> _categories = [
    CategoryModel(
      imagePath: 'assets/images/pulses.png',
      title: 'Pulses',
      backgroundColor: Colors.orange.shade100,
    ),
    CategoryModel(
      imagePath: 'assets/images/pulses2.png',
      title: 'Rice',
      backgroundColor: Colors.green.shade100,
    ),
    CategoryModel(
      imagePath: 'assets/images/item1.png',
      title: 'Fruits',
      backgroundColor: Colors.yellow.shade100,
    ),
  ];

  List<CategoryModel> get categories => _categories;
}