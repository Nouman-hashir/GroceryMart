
import '../../../grocery_mart.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({
    super.key,
    required this.title,
    required this.products,
    required this.categories,
    required this.selectedCategory,
    required this.onCategoryTap,
    this.onSeeAll,
  });

  final String title;
  final List<ProductModel> products;
  final List<CategoryModel> categories;
  final String? selectedCategory;
  final void Function(String) onCategoryTap;
  final VoidCallback? onSeeAll;
  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 65.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: categories.length,
            separatorBuilder: (_, __) => SizedBox(width: 12.w),
            itemBuilder: (context, index) {
              final category = categories[index];
              final isSelected = selectedCategory == category.title;
              return CategoryCard(
                imagePath: category.imagePath,
                title: category.title,
                backgroundColor: category.backgroundColor,
                isSelected: isSelected,
                onTap: () {
                  onCategoryTap(category.title);
                },
              );
            },
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