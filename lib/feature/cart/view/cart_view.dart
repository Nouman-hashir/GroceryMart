// ignore_for_file: avoid_print
import '../../../grocery_mart.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = context.watch<CartProvider>();

    return SafeArea(
      child: Scaffold(
        floatingActionButton: CustomAppButtons.secondaryButton(
          text: 'Checkout',
          width: double.infinity,
          onTap: () {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (context.mounted) {
                MessageHelper.showSuccessMessage(context, 'Under development');
              }
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: AppColors.bgColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.transparent),
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
        body: cartProvider.cartItems.isEmpty
            ? Center(
                child: Lottie.asset(
                  'assets/lotties/empty.json',
                  width: 250.w,
                  height: 200.h,
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartProvider.cartItems.length,
                      itemBuilder: (context, index) {
                        final product = cartProvider.cartItems.keys.elementAt(
                          index,
                        );
                        final quantity = cartProvider.cartItems[product]!;

                        return CartItemTile(
                          image: product.image,
                          title: product.name,
                          description: "${product.unit}, Price",
                          price: product.price * quantity,
                          quantity: quantity,
                          onIncrement: () => cartProvider.increment(product),
                          onDecrement: () => cartProvider.decrement(product),
                          onRemove: () =>
                              cartProvider.removeItem(product, context),
                        );
                      },
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
