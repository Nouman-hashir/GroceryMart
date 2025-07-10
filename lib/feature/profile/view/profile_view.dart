
import '../../../grocery_mart.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Text(
          'Profile View',
          style: AppTextStyles.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}