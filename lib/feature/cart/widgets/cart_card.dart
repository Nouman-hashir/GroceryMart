import '../../../grocery_mart.dart';

class CartItemTile extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onRemove;

  const CartItemTile({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DividerLine(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductImage(image: image),
              SizedBox(width: 15.w),
              Expanded(
                child: ProductInfo(
                  title: title,
                  description: description,
                  quantity: quantity,
                  onIncrement: onIncrement,
                  onDecrement: onDecrement,
                ),
              ),
            PriceAndRemove(price: price, onRemove: onRemove),
            ],
          ),
        ),
        
      ],
    );
  }
}
