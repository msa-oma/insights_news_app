import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/text_style.dart';

class SourceScreen extends StatefulWidget {
  const SourceScreen({super.key});

  @override
  State<SourceScreen> createState() => _SourceScreenState();
}

class _SourceScreenState extends State<SourceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Source',
              style: getTitleStyle(color: AppColors.whiteRegular))),
    );
  }
}
