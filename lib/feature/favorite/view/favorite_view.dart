import '../../../grocery_mart.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Text(
          'Favorite View',
          style: AppTextStyles.montserrat(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
