
import '../../../grocery_mart.dart';

class SimpleSearchBar extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onSubmit;
  final TextEditingController controller;
  final String hintText;

  const SimpleSearchBar({
    super.key,
    required this.onChanged,
    required this.onSubmit,
    required this.controller,
    this.hintText = 'Search for anything',
  });

  @override
  State<SimpleSearchBar> createState() => _SimpleSearchBarState();
}

class _SimpleSearchBarState extends State<SimpleSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(13.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        children: [
          Icon(Icons.search_rounded, color: Colors.black54, size: 23.sp),
          SizedBox(width: 10.w),
          Expanded(
            child: TextField(
              onChanged: widget.onChanged,
              onSubmitted: widget.onSubmit,
              controller: widget.controller,
              style:  AppTextStyles.montserrat(color: Colors.black87, fontSize: 17.sp, fontWeight: FontWeight.w400),  
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintMaxLines: 1,
                hintStyle: AppTextStyles.poppins(
                  color: AppColors.black,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
                isCollapsed: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
