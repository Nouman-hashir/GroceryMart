import '../../../grocery_mart.dart';

class PriceAndRemove extends StatelessWidget {
  final double price;
  final VoidCallback onRemove;

  const PriceAndRemove({super.key, 
    required this.price,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onRemove,
          child: const Icon(Icons.close, color: Colors.grey),
        ),
        SizedBox(height: 24.h),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: AppTextStyles.montserrat(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
