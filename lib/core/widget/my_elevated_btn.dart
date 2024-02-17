import 'package:flutter/material.dart';
import 'package:insights_news_app/core/utils/app_colors.dart';
import 'package:insights_news_app/core/utils/text_style.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final double width;
  final double hight;
  final Function() onPressed;

  const MyElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.width,
    this.hight = 46,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, hight),
        backgroundColor: AppColors.greyUploadBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), //OR 10
        ),
      ),
      child: Text(text, style: getStyleS16W400Fnunsan()),
    );
  }
}
