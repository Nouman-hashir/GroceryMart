import '../../../grocery_mart.dart';

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70.h,
        width: 170.w, 
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 60.h,
              width: 60.w,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 10.w),
            Expanded( 
              child: Text(
                title,
                style: AppTextStyles.montserrat(
                  fontSize: 15.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
