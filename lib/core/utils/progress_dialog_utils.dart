import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressDialogUtils {
  static bool isProgressVisible = false;

  /// Displays a circular progress indicator in a dialog box.
  ///
  /// The dialog box is created using the `Get.dialog()` method from the GetX
  /// library. The progress indicator is a `CircularProgressIndicator` widget.
  ///
  /// If the `isCancellable` parameter is set to `true`, the dialog box can be dismissed by
  /// tapping outside it. If it is set to `false` (the default), the dialog box cannot be dismissed.
  ///
  /// Once the progress indicator is displayed, the `isProgressVisible` flag is set to `true`.
  static void showProgressDialog({isCancellable = false}) async {
    if (!isProgressVisible) {
      Get.dialog(
        const Center(
          child: CircularProgressIndicator.adaptive(
            strokeWidth: 4,
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.white,
            ),
          ),
        ),
        barrierDismissible: isCancellable,
      );
      isProgressVisible = true;
    }
  }

  /// Hides the progress dialog if it is currently visible.
  static void hideProgressDialog() {
    if (isProgressVisible) Get.back();
    isProgressVisible = false;
  }
}
