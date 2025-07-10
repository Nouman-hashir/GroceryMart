import '../../../grocery_mart.dart';

class ProductImageHeader extends StatelessWidget {
  final ProductModel product;
  const ProductImageHeader({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 24.h, left: 16.w, right: 16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(32.r),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  IconButton(
                    icon: const Icon(Icons.share_outlined),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Center(
                child: Image.asset(
                  product.image,
                  height: 180.h,
                  width: 220.w,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dot(AppColors.primaryColor),
                  SizedBox(width: 6.w),
                  _dot(Colors.grey.shade300),
                ],
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ],
    );
  }

  Widget _dot(Color color) {
    return Container(
      width: 8.w,
      height: 8.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4.r),
      ),
    );
  }
}
