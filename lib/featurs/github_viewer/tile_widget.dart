import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/utils/text_style.dart';

class GithubItem extends StatelessWidget {
  final String title;
  final String name;
  final String description;
  const GithubItem({
    super.key,
    required this.title,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: getBodyStyle(),
            ),
            const Gap(10),
            Text(
              name,
              style: getBodyStyle(),
            ),
            const Gap(10),
            Text(
              description,
              style: getBodyStyle(),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.star),
                Text(
                  "unKnown ",
                  style: getBodyStyle(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
