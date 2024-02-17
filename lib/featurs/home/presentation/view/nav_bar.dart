import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insights_news_app/featurs/home/presentation/view/home_screen.dart';
import 'package:insights_news_app/featurs/sources/sources_screen.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../profile/profile_screen.dart';
import '../../../search/search_screen.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({super.key});

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int _index = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const SourceScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/home.svg'),
              activeIcon: SvgPicture.asset(
                'assets/svgs/home.svg',
                colorFilter:
                    ColorFilter.mode(AppColors.greenLime, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/search.svg'),
              activeIcon: SvgPicture.asset(
                'assets/svgs/search.svg',
                colorFilter:
                    ColorFilter.mode(AppColors.greenLime, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/source.svg'),
              activeIcon: SvgPicture.asset(
                'assets/svgs/source.svg',
                colorFilter:
                    ColorFilter.mode(AppColors.greenLime, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/Profile.svg'),
              activeIcon: SvgPicture.asset(
                'assets/svgs/Profile.svg',
                colorFilter:
                    ColorFilter.mode(AppColors.greenLime, BlendMode.srcIn),
              ),
              label: ''),
        ],
      ),
    );
  }
}
