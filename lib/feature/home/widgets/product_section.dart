import '../../../grocery_mart.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final List<ProductModel> products;
  final bool? isCategory;

  const ProductSection({super.key, required this.title, required this.products, this.isCategory});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
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
              TextButton(
                onPressed: () {},
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
           if (isCategory == true) ...[
             PulsesRow(),
           ],
        
        8.verticalSpace, 
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero, 
          itemCount: products.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 190,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10, 
          ),
          itemBuilder: (_, i) => ProductCard(product: products[i]),
        ),
      ],
    );
  }
}
