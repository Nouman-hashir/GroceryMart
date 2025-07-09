// ignore_for_file: deprecated_member_use

import 'package:grocery_mart/grocery_mart.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/onboarding1.png', 
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.1),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 60.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/carrot.png',
                  height: 80.h,
                ),
                SizedBox(height: 20.h),
                Text(
                  'Welcome to our store',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.montserrat(
                    fontSize: 42.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  'Get your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.montserrat(
                    fontSize: 16.sp,
                    color: AppColors.bgColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40.h),
               CustomAppButtons.primaryButton(
                width: double.infinity,
                text: 'Get Started',
                onTap: () {
                 context.pushNamed(AppRoutes.navbar.name);
                },
               ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
