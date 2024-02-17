import 'package:flutter/material.dart';
import 'package:insights_news_app/core/utils/app_colors.dart';
import 'package:insights_news_app/core/utils/text_style.dart';

class CustomTextFormFild extends StatelessWidget {
  final String hintText;
  final IconButton? icon;
  final bool? readOnly;
  final int? maxLines;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  const CustomTextFormFild(
      {super.key,
      required this.hintText,
      this.icon,
      this.readOnly,
      this.maxLines,
      this.controller,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        style: getStyleS18W600Fnunsan(),
        controller: controller,
        onChanged: onChanged,
        maxLines: maxLines,
        readOnly: readOnly ?? false,
        cursorColor: AppColors.whiteRegular,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hintText,
          hintStyle: getStyleS18W600Fnunsan(),

          fillColor: AppColors.greyUploadBg, // Background color
          filled: true,

          //contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),

          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: AppColors.greyUploadBg),
              borderRadius: const BorderRadius.all(Radius.circular(20))),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.greyUploadBg),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),

          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(20))),

          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ),
      ),
    );
  }
}
