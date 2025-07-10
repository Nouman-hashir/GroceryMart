import '../../../grocery_mart.dart';

class ProductDetailSection extends StatelessWidget {
  final String? description;

  const ProductDetailSection({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedIconColor: Colors.black,
      iconColor: Colors.black,
      collapsedTextColor: Colors.black,
      textColor: Colors.black,
      tilePadding: EdgeInsets.zero,
      title: Text(
        'Product Detail',
        style: AppTextStyles.montserrat(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),
      ),
      initiallyExpanded: true,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: Text(
            description ?? 'No description available.',
            style: AppTextStyles.montserrat(
              fontSize: 14.sp,
              color: AppColors.greyText,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}
