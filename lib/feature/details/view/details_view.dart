import '../../../grocery_mart.dart';

class DetailsView extends StatefulWidget {
  final ProductModel product;
  const DetailsView({super.key, required this.product});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  int quantity = 1;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          ProductImageHeader(product: product),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
                children: [
                  ProductInfoHeader(
                    product: product,
                    isFavorite: isFavorite,
                    onFavoriteToggle: () {
                      setState(() => isFavorite = !isFavorite);
                    },
                  ),
                  SizedBox(height: 26.h),
                  QuantityPriceRow(
                    quantity: quantity,
                    onIncrement: () => setState(() => quantity++),
                    onDecrement: quantity > 1
                        ? () => setState(() => quantity--)
                        : null,
                    price: product.price,
                  ),
                  SizedBox(height: 24.h),
                  ProductDetailSection(description: product.description),
                  SizedBox(height: 26.h),
                  NutritionSection(nutrition: product.nutrition),
                  Divider(height: 32.h),
                  ReviewSection(review: product.review),
                  SizedBox(height: 24.h),
                  CustomAppButtons.primaryButton(
                    text: 'Add To Basket',
                    width: double.infinity,
                    onTap: () {
                      context.read<CartProvider>().addToCart(product, context);
                    },
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
