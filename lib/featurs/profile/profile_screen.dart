import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/text_style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Profile',
              style: getTitleStyle(color: AppColors.whiteRegular))),
    );
  }
}
