import '../../../grocery_mart.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final homeProvider = context.read<HomeProvider>();
      homeProvider.loadProducts();
     final categories = homeProvider.categories;
      if (categories.isNotEmpty) {
        homeProvider.selectedCategory = categories.first.title;
    }
  });
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
          child: SingleChildScrollView(
            child: Column(
              spacing: 14.h,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LocationHeader(),
                SimpleSearchBar(
                  onChanged: (value) {},
                  onSubmit: (value) {},
                  controller: TextEditingController(),
                  hintText: 'Search Stores',
                ),
                const OfferBanner(),
                ProductHorizontalSection(
                  title: 'Exclusive Offers',
                  products: homeProvider.offerProducts,
                  onSeeAll: () {},
                ),
                ProductHorizontalSection(
                  title: 'Best Selling',
                  products: homeProvider.bestProducts,
                  onSeeAll: () {},
                ),
                CategorySection(
                  title: 'Groceries',
                  products: homeProvider.filteredGroceryProducts,
                  categories: homeProvider.categories,
                  selectedCategory: homeProvider.selectedCategory,
                  onCategoryTap: (catTitle) {
                    homeProvider.selectedCategory = catTitle;
                  },
                  onSeeAll: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


