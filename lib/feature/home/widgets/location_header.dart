

import '../../../grocery_mart.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/logo.png', height: 30.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.location_on, size: 16),
            Text(
              'Dhaka, Banassre',
              style: AppTextStyles.montserrat(fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
