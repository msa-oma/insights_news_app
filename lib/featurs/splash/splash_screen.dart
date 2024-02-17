import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:insights_news_app/core/services/app_local_storage.dart';
import 'package:insights_news_app/core/utils/app_colors.dart';
import 'package:insights_news_app/core/utils/text_style.dart';
import 'package:insights_news_app/featurs/upload/upload_screen.dart';

import '../../core/functions/routing.dart';
import '../home/presentation/view/nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late bool isUploaded;

  @override
  void initState() {
    super.initState();

    AppLocal.getCachedDataX(AppLocal.isUploadedKey).then((value) {
      isUploaded = value ?? false;
    });
    Future.delayed(
      const Duration(seconds: 3),
      () {
        AppLocal.getCachedDataX(AppLocal.isUploadedKey).then((value) =>
            pushAndReplacment(context,
                isUploaded ? const NavBarWidget() : const UploadScreen()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackiPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/logo-splash.png"),
              height: 235,
            ),
            const Gap(40), // it is 57 in design
            Text(
              "Insights NEWS",
              style: getStyleS25W600Fnunsan(),
            ),
            const Gap(12),
            Text(
              "Stay Informed, Anytime, Anywhere.",
              style: getStyleS14W400Finter()
                  .copyWith(color: AppColors.greysplashTxt),
            ),
            const Gap(100),
          ],
        ),
      ),
    );
  }
}
