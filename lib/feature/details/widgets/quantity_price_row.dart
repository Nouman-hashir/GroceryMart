import '../../../grocery_mart.dart';

class QuantityPriceRow extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback? onDecrement;
  final double price;

  const QuantityPriceRow({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove, color: Colors.black),
                onPressed: onDecrement,
              ),
              Text(
                '$quantity',
                style: AppTextStyles.montserrat(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                icon: Icon(Icons.add, color: Colors.green),
                onPressed: onIncrement,
              ),
            ],
          ),
        ),
        const Spacer(),
        Text(
          '\$${price.toStringAsFixed(2)}',
          style: AppTextStyles.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 22.sp,
          ),
        ),
      ],
    );
  }
}
