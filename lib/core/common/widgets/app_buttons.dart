

import '../../../grocery_mart.dart';

class CustomAppButtons {
  static Widget footerBtn({
    required String label,
    Color? color,
    Color? textColor,
    required VoidCallback onTap,
    double? width,
    String? image,
    double? height,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 40.h,
        width: width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: image != null
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image, width: 20.w, height: 22.h),
                    5.horizontalSpace,
                    Text(
                      label,
                      style: AppTextStyles.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                        color: textColor ?? Colors.black87,
                      ),
                    ),
                  ],
                )
              : Text(
                  label,
                  style: AppTextStyles.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: textColor ?? Colors.black87,
                  ),
                ),
        ),
      ),
    );
  }

  static Widget primaryButton({
    Alignment alignment = Alignment.topLeft,
    required String text,
    required VoidCallback onTap,
    Color backgroundColor = AppColors.primaryColor,
    Color boarderSideColor = AppColors.white,
    Color textColor = Colors.white,
    double fontSize = 17,
    FontWeight fontWeight = FontWeight.w600,
    double borderRadius = 8,
    double? width,
    EdgeInsets padding = const EdgeInsets.symmetric(
      vertical: 17,
      horizontal: 16,
    ),
    bool? isLoading = false, // default false
  }) {
    return Align(
      alignment: alignment,
      child: SizedBox(
        width: width,
        child: ElevatedButton(
          onPressed: isLoading == true ? null : onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(color: boarderSideColor, width: 1),
            ),
            padding: padding,
            elevation: 0,
          ),
          child: isLoading == true
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2.5,
                  ),
                )
              : Text(
                  text,
                  style: AppTextStyles.montserrat(
                    fontSize: fontSize.sp,
                    fontWeight: fontWeight,
                    color: textColor,
                  ),
                ),
        ),
      ),
    );
  }

  static Widget secondaryButton({
    required String text,
    required VoidCallback onTap,
    Color borderColor = AppColors.white,
    Color backgroundColor = AppColors.primaryColor,
    Color textColor = AppColors.bgColor,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w600,
    double borderRadius = 8,
    double? width,
    EdgeInsets padding = const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 16,
    ),
    Color? shadowColor,
    double? elevation,
  }) {
    return SizedBox(
      width: width,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          side: BorderSide(color: borderColor, width: 1),
          padding: padding,
          shadowColor: shadowColor,
          elevation: elevation,
        ),
        child: Text(
          text,
          style: AppTextStyles.montserrat(
            fontSize: fontSize.sp,
            fontWeight: fontWeight,
            color: textColor,
          ),
        ),
      ),
    );
  }

  static Widget primaryIconButton({
    required String text,
    required VoidCallback onTap,
    Color backgroundColor = Colors.pink,
    // Color bordercolor = AppColors.primaryColor,
    Color textColor = AppColors.black,
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.w600,
    double borderRadius = 8,
    double? width,
    String? icon,
    Color? iconColor,
    EdgeInsets padding = const EdgeInsets.symmetric(
      vertical: 14,
      horizontal: 16,
    ),
    Widget? iconWidget,
  }) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            // side: BorderSide(color: bordercolor, width: 1),
          ),
          padding: padding,
          elevation: 0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconWidget ?? Image.asset(icon ?? '', height: 20.sp),
            10.horizontalSpace,
            Text(
              text,
              style: AppTextStyles.montserrat(
                fontSize: fontSize.sp,
                fontWeight: fontWeight,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget profileIconButton({
    required BuildContext context,
    required String label,
    required String image,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      child: OutlinedButton.icon(
        iconAlignment: IconAlignment.start,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 15.sp),
          side: const BorderSide(color: Colors.black12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        onPressed: onTap,
        icon: Image.asset(
          image,
          height: 18.sp,
          color: Colors.black87,
          colorBlendMode: BlendMode.srcIn,
        ),
        label: Text(
          label,
          style: AppTextStyles.montserrat(
            color: Colors.black87,
            fontSize: 13.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  static Widget roleButton({
    required String label,
    required String imageAsset,
    required VoidCallback onTap,
    Color backgroundColor = AppColors.black,
    Color textColor = AppColors.white,
    double borderRadius = 20,
    double? width,
    double? height,
    double iconSize = 40,
    double fontSize = 20,
    FontWeight fontWeight = FontWeight.w500,
    EdgeInsetsGeometry? padding,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding:
            padding ?? EdgeInsets.symmetric(vertical: 18.h, horizontal: 16.w),
        decoration: BoxDecoration(
          color: backgroundColor.withValues(alpha: 0.85),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          children: [
            Image.asset(imageAsset, width: iconSize, height: iconSize),
            SizedBox(width: 16.w),
            Text(
              label,
              style: AppTextStyles.montserrat(
                color: textColor,
                fontSize: fontSize.sp,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget emergencyButton({
    required String text,
    required IconData icon,
    Color backgroundColor = const Color(0xFFFF8C8C),
    required VoidCallback onTap,
  }) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 18.h),
      ),
      onPressed: onTap,
      icon: Icon(icon, color: AppColors.lightblack),
      label: Text(
        text,
        style: AppTextStyles.montserrat(
          color: AppColors.lightblack,
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
        ),
      ),
    );
  }
}
