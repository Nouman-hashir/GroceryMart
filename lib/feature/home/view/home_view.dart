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
    context.read<HomeProvider>().loadProducts();
  }
  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical:40.h),
        child: SingleChildScrollView(
          child: Column(
            spacing: 4,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LocationHeader(),
              10.verticalSpace,
              SimpleSearchBar(
                onChanged: (value) {},
                onSubmit: (value) {},
                controller: TextEditingController(),
                hintText: 'Search Stores',
              ),
              10.verticalSpace,
              const OfferBanner(),
              10.verticalSpace,
              ProductSection(title: 'Exclusive Offers', products: homeProvider.offerProducts),
              10.verticalSpace,
              ProductSection(title: 'Best Selling', products: homeProvider.bestProducts),
              10.verticalSpace,
              ProductSection(title: 'Groceries', products: homeProvider.groceryProducts, isCategory: true),
            ],
          ),
        ),
      ),
    );
  }
}
