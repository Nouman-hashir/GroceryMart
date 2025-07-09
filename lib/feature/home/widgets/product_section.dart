
import '../../../grocery_mart.dart';

class ProductHorizontalSection extends StatelessWidget {
  final String title;
  final List<ProductModel> products;
  final VoidCallback? onSeeAll;

  const ProductHorizontalSection({
    super.key,
    required this.title,
    required this.products,
    this.onSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyles.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              if (onSeeAll != null)
                TextButton(
                  onPressed: onSeeAll,
                  child: Text(
                    'See all',
                    style: AppTextStyles.montserrat(
                      color: AppColors.primaryColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 220.h,
          child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          ),
        ),
      ],
    );
  }
}