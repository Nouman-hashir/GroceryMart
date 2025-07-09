import '../../../grocery_mart.dart';

class BottomNavScreen extends StatefulWidget {
  final int? screenIndex;
  const BottomNavScreen({super.key, this.screenIndex});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List<Widget> screens = const [
    HomeView(),
    CartView(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  final List<String> titles = [
    'Shop',
    'Explore',
    'Cart',
    'Favourite',
    'Account',
  ];

  final List<String> filledIcons = [
    AppImages.shopFill,
    AppImages.exploreFill,
    AppImages.cartFill,
    AppImages.favFill,
    AppImages.profileFill,
  ];

  final List<String> unfilledIcons = [
    AppImages.shopOutline,
    AppImages.exploreOutline,
    AppImages.cartOutline,
    AppImages.favOutline,
    AppImages.profileOutline,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, navProvider, child) {
        return Scaffold(
          body: IndexedStack(
            index: navProvider.currentIndex,
            children: screens,
          ),
          bottomNavigationBar: Container(
            height: 60.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 10,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (index) {
                  final isSelected = navProvider.currentIndex == index;
                  return GestureDetector(
                    onTap: () => navProvider.setIndex(index),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: Image.asset(
                            isSelected
                                ? filledIcons[index]
                                : unfilledIcons[index],
                            color: isSelected
                                ? AppColors.primaryColor
                                : AppColors.black,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          titles[index],
                          style: AppTextStyles.montserrat(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: isSelected
                                ? AppColors.primaryColor
                                : AppColors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        );
      },
    );
  }
}
