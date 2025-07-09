// ignore_for_file: deprecated_member_use

import '../../../grocery_mart.dart';

class OfferBanner extends StatefulWidget {
  const OfferBanner({super.key});

  @override
  State<OfferBanner> createState() => _OfferBannerState();
}

class _OfferBannerState extends State<OfferBanner> {
  int _currentIndex = 0;

  final List<String> banners = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: banners.length,
            itemBuilder: (context, index, realIndex) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  banners[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  filterQuality: FilterQuality.high, 
                ),
              );
            },
            options: CarouselOptions(
              height: 120.h,
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.92,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 12.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(banners.length, (index) {
                final isActive = index == _currentIndex;
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  height: 8.h,
                  width: isActive ? 20.w : 8.w,
                  decoration: BoxDecoration(
                    color: isActive
                        ? AppColors.primaryColor
                        : Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
