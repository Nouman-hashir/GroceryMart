import '../../../grocery_mart.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Text(
          'Explore View',
          style: AppTextStyles.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
