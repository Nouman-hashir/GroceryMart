import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

import '../../../grocery_mart.dart';

class MessageHelper {
  static void showSuccessMessage(
    BuildContext context,
    String message,
  ) {
    _showSnackBar(
      context: context,
      title: "Success",
      message: message,
      color: AppColors.primaryColor,
      isSuccess: true,
    );
  }

  static void showErrorMessage(BuildContext context, String message) {
    _showSnackBar(
      context: context,
      title: "Error",
      message: message,
      color: AppColors.primaryColor,
      isSuccess: false,
    );
  }

  static void _showSnackBar({
    required BuildContext context,
    required String message,
    required Color color,
    required bool isSuccess,
    required String title,
  }) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        inMaterialBanner: false,
        color: color,
        title: title,
        message: message,
        contentType: isSuccess ? ContentType.success : ContentType.failure,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
