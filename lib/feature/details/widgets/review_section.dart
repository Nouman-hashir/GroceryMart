import '../../../grocery_mart.dart';

class ReviewSection extends StatelessWidget {
  final double? review;

  const ReviewSection({super.key, this.review});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Review',
        style: AppTextStyles.montserrat(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: List.generate(
              (review ?? 0).round(),
              (index) => Icon(Icons.star, color: Colors.orange, size: 22),
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.grey),
        ],
      ),
      onTap: () {},
    );
  }
}
