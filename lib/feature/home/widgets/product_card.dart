
import '../../../grocery_mart.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(product.image, height: 70.h),
          const SizedBox(height: 12),
          Text(
            product.name,
            style: AppTextStyles.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${product.unit}, Priceg',
            style: AppTextStyles.montserrat(
              fontSize: 14.sp,
              color: AppColors.greyText,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: AppTextStyles.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.green,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon:  const Icon(Icons.add, color: Colors.white, size: 18),
                  onPressed: () {
                    context.read<CartProvider>().addToCart(product, context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
