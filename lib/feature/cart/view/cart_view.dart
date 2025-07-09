import '../../../grocery_mart.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          backgroundColor: AppColors.bgColor,
          title: Text(
            'My Cart',
            style: AppTextStyles.montserrat(
              color: Colors.black,
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CartItemTile(
              image: 'assets/images/item1.png',
              title: 'Organic Bananas',
              description: '12kg, Price',
              price: 3.00,
              quantity: 1,
              onIncrement: () => print('Add'),
              onDecrement: () => print('Remove'),
              onRemove: () => print('Deleted'),
            ),
          ],
        ),
      ),
    );
  }
}
