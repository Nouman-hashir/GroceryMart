import '../../../grocery_mart.dart';

class ProductInfo extends StatelessWidget {
  final String title;
  final String description;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const ProductInfo({
    super.key,
    required this.title,
    required this.description,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.montserrat(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          description,
          style: AppTextStyles.montserrat(
            fontSize: 14.sp,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            QuantityButton(icon: Icons.remove, onPressed: onDecrement),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                '$quantity',
                style: AppTextStyles.montserrat(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            QuantityButton(
              icon: Icons.add,
              onPressed: onIncrement,
              color: AppColors.primaryColor,
            ),
          ],
        ),
      ],
    );
  }
}
