import '../../../grocery_mart.dart';

class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: 60.h,
      width: 70.h,
      fit: BoxFit.cover,
    );
  }
}
