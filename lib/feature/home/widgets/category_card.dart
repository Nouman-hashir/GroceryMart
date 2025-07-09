import '../../../grocery_mart.dart';

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color backgroundColor;
  final VoidCallback? onTap;
  final bool isSelected;

  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.backgroundColor,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150.w,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : Colors.transparent,
            width: 1.5.w,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              height: 40.h,
              width: 40.w,
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
