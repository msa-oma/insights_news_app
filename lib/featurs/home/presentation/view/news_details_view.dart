import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../../../core/widget/custom_btn.dart';
import '../../data/news_model/article.dart';

class NewsDetailsView extends StatelessWidget {
  final Article model;
  const NewsDetailsView({super.key, required this.model});

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse(model.url ?? ''))) {
      throw Exception('Could not launch');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: AppColors.whiteRegular,
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: CustomButton(
            foreground: AppColors.blackiPrimary,
            background: AppColors.greenLime,
            text: 'Go to Website',
            onPressed: () {
              _launchUrl();
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                model.urlToImage ?? '',
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    child: const Icon(Icons.error),
                  );
                },
              ),
            ),
            const Gap(10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    model.title ?? '',
                    style: getTitleStyle(color: AppColors.whiteRegular),
                  ),
                ),
              ],
            ),
            const Gap(15),
            Row(
              children: [
                Text(
                  model.author ?? '',
                  style: getBodyStyle(color: AppColors.greenLime),
                ),
              ],
            ),
            const Gap(15),
            Row(
              children: [
                Text(
                  model.publishedAt?.split('T')[0] ?? '',
                  style: getSmallStyle(),
                ),
              ],
            ),
            const Gap(10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    model.description ?? '',
                    style: getBodyStyle(color: AppColors.whiteRegular),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
