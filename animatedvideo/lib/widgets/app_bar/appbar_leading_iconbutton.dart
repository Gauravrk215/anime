import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../utils/image_constant.dart';
import '../custom_icon_button.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({super.key, this.imagePath, this.margin, this.onTap});

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 32.adaptSize,
          width: 32.adaptSize,
          decoration: IconButtonStyleHelper.outlineIndigo,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowleft,
          ),
        ),
      ),
    );
  }
}
