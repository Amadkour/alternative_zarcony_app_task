import 'package:flutter/material.dart';

import '../utils/routing.dart';
import 'color.dart';

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.whiteColor,
  backgroundColor: AppColors.whiteColor,
  pageTransitionsTheme: PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CustomPageTransitionBuilder(),
      TargetPlatform.iOS: OpenUpwardsPageTransitionsBuilder(),
    },
  ),
  textTheme: TextTheme(
    overline: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.0,
      color: AppColors.primaryColor,
      shadows: [
        Shadow(
          color: AppColors.primaryColor,
          blurRadius: 2.0,
          offset: const Offset(
            1.0,
            3.5,
          ),
        )
      ],
    ),
    headline6: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.0,
      color: AppColors.primaryColor,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.blackColor,
    toolbarTextStyle: ThemeData.dark()
        .textTheme
        .copyWith(
          headline6: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
            color: AppColors.blackColor,
          ),
        )
        .bodyText2,
    titleTextStyle: ThemeData.dark()
        .textTheme
        .copyWith(
          headline6: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
            color: AppColors.blackColor,
          ),
        )
        .headline6,
  ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
);
