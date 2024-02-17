import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insights_news_app/featurs/splash/splash_screen.dart';

import 'core/utils/app_colors.dart';
import 'core/utils/text_style.dart';
import 'featurs/home/presentation/view-model/home_cubit.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: AppColors.blackiPrimary,
            appBarTheme: AppBarTheme(
              color: AppColors.blackiPrimary,
              elevation: 0.0,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: AppColors.greenLime,
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.blackiPrimary,
              showSelectedLabels: false,
              showUnselectedLabels: false,
            ),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: getBodyStyle(),
              fillColor: AppColors.greysiBg,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            )),
        home: const SplashScreen(),
      ),
    );
  }
}
