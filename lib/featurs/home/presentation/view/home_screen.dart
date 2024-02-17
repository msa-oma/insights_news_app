import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:insights_news_app/core/utils/app_colors.dart';
import 'package:insights_news_app/core/utils/text_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/home_header.dart';
import '../widgets/news_list_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            children: [
              const HomeHeader(),
              const Gap(20),
              CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/rodri.png',
                        height: 140,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 150,
                    viewportFraction: .8,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: (index, reason) {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                  )),
              const Gap(10),
              SmoothPageIndicator(
                  controller: PageController(
                    initialPage: pageIndex,
                  ), // PageController
                  count: 6,
                  effect: ScrollingDotsEffect(
                      activeDotColor: AppColors.greenLime,
                      dotHeight: 14,
                      dotWidth: 14,
                      spacing: 7), // your preferred effect
                  onDotClicked: (index) {}),
              const Gap(20),
              // tabs
              ButtonsTabBar(
                  // Customize the appearance and behavior of the tab bar
                  backgroundColor: AppColors.greenLime,
                  borderColor: Colors.black,
                  buttonMargin: const EdgeInsets.only(left: 10),
                  labelStyle: getBodyStyle(color: Colors.black),
                  unselectedBackgroundColor: AppColors.greysiBg,
                  unselectedLabelStyle: getBodyStyle(color: Colors.white),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  // Add your tabs here
                  tabs: const [
                    Tab(
                      text: 'Science',
                    ),
                    Tab(
                      text: 'Entertainment',
                    ),
                    Tab(
                      text: 'Sports',
                    ),
                    Tab(
                      text: 'Business',
                    ),
                  ]),
              const Gap(10),
              const Expanded(
                child: TabBarView(children: [
                  NewsListBuilder(category: 'science'),
                  NewsListBuilder(category: 'entertainment'),
                  NewsListBuilder(category: 'sports'),
                  NewsListBuilder(category: 'business'),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
