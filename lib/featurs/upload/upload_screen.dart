import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:insights_news_app/core/utils/app_colors.dart';
import 'package:insights_news_app/core/utils/text_style.dart';
import 'package:insights_news_app/core/widget/my_elevated_btn.dart';
import 'package:insights_news_app/core/widget/my_txt_form_fild.dart';
import 'package:insights_news_app/featurs/home/presentation/view/home_screen.dart';

import '../../core/functions/dialogs.dart';
import '../../core/functions/get_img_funcs.dart';
import '../../core/functions/routing.dart';
import '../../core/services/app_local_storage.dart';

String? imgPath;
String name = '';

class UploadScreen extends StatefulWidget {
  const UploadScreen({super.key});

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackiPrimary,
      appBar: AppBar(backgroundColor: AppColors.blackiPrimary, actions: [
        TextButton(
            onPressed: () {
              // image and name
              // no image
              // no name
              // no image and no name
              if (imgPath != null && name.isNotEmpty) {
                AppLocal.cacheDataX(AppLocal.imageKey, imgPath);
                AppLocal.cacheDataX(AppLocal.nameKey, name);
                AppLocal.cacheDataX(AppLocal.isUploadedKey, true);
                pushAndReplacment(context, const HomeScreen());
              } else if (imgPath == null && name.isNotEmpty) {
                showErrorDialog(context, 'Please Upload Your image');
              } else if (imgPath != null && name.isEmpty) {
                showErrorDialog(context, 'Enter Your Name');
              } else {
                showErrorDialog(
                    context, 'Please Upload Your image and Enter Your Name');
              }
            },
            child: Text(
              "Done",
              style: getStyleS18W600FnunsanCgreen(),
            ))
      ]),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 65,
                backgroundImage: imgPath != null
                    ? FileImage(File(imgPath!)) as ImageProvider
                    : const AssetImage(
                        'assets/images/user.png',
                      ),
                backgroundColor: AppColors.blackiPrimary,
              ),
              const Gap(25),
              MyElevatedButton(
                width: MediaQuery.of(context).size.width * 0.5,
                text: 'Upload from Camera',
                onPressed: () async {
                  imgPath = await getImageFromCamera();
                  if (imgPath != null) {
                    setState(() {});
                  }
                },
              ),
              const Gap(15),
              MyElevatedButton(
                width: MediaQuery.of(context).size.width * 0.5,
                text: 'Upload from Gallery',
                onPressed: () async {
                  imgPath = await getImageFromGallery();
                  if (imgPath != null) {
                    setState(() {});
                  }
                },
              ),
              const Gap(20),
              Divider(
                endIndent: 10,
                indent: 10,
                color: AppColors.greenLime,
              ),
              const Gap(35),
              CustomTextFormFild(
                hintText: 'Enter Your name ',
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                icon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: AppColors.greenLime,
                    )),
              ),
              const Gap(50),
            ],
          ),
        ),
      ),
    );
  }
}
