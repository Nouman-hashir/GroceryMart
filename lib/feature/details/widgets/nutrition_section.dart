import '../../../grocery_mart.dart';

class NutritionSection extends StatelessWidget {
  final String? nutrition;

  const NutritionSection({super.key, this.nutrition});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Nutritions',
        style: AppTextStyles.montserrat(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              nutrition ?? 'N/A',
              style: AppTextStyles.montserrat(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
      onTap: () {},
    );
  }
}
