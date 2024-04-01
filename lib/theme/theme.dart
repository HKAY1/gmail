import 'package:flutter/material.dart';

import '../constants/colors.dart';

abstract class AppTheme {
  AppTheme._();

  static ThemeData appTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: AppColors.lightGrey,
      textTheme: _textTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.black),
        backgroundColor: AppColors.offWhite,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 2,
        backgroundColor: AppColors.black,
        selectedItemColor: AppColors.offWhite,
        unselectedItemColor: AppColors.grey300,
        showUnselectedLabels: true,
        unselectedLabelStyle: AppTheme.subTitleStyle,
        selectedLabelStyle:
            AppTheme.subTitleStyle.copyWith(color: AppColors.offWhite),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.offWhite,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 52),
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.skyBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          foregroundColor: AppColors.offWhite,
          side: const BorderSide(
            color: AppColors.skyBlue,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.black,
        ),
      ));

  static const TextTheme _textTheme = TextTheme(
    displayLarge: headline1,
    displayMedium: headline2,
    displaySmall: headline3,
    headlineMedium: headline4,
    headlineSmall: headline5,
    titleLarge: headline6,
    bodyLarge: bodyText1,
    bodyMedium: bodyText2,
  );

  static const TextStyle headline1 = TextStyle(
    fontSize: 33,
    color: AppColors.black,
    fontFamily: 'DMSans',
  );
  static const TextStyle headline2 = TextStyle(
    fontSize: 30,
    color: AppColors.black,
    fontFamily: 'DMSans',
  );
  static const TextStyle headline3 = TextStyle(
    fontSize: 27,
    color: AppColors.black,
    fontFamily: 'DMSans',
  );
  static const TextStyle headline4 = TextStyle(
    fontSize: 24,
    color: AppColors.black,
    fontFamily: 'DMSans',
  );
  static const TextStyle headline5 = TextStyle(
    fontSize: 21,
    color: AppColors.black,
    fontFamily: 'DMSans',
  );
  static const TextStyle headline6 = TextStyle(
    fontSize: 18,
    color: AppColors.black,
    fontFamily: 'DMSans',
  );
  static const TextStyle bodyText1 = TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontFamily: 'DMSans',
  );
  static const TextStyle bodyText2 = TextStyle(
    fontSize: 12,
    color: AppColors.black,
    fontFamily: 'DMSans',
  );

  static final TextStyle boldBlueHeading = bodyText1.copyWith(
    color: AppColors.darkSkyBlue,
    fontWeight: FontWeight.bold,
    fontFamily: 'DMSans',
  );

  static final TextStyle titleStyle = headline3.copyWith(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
    wordSpacing: 3,
    height: 1.5,
  );

  static final TextStyle subTitleStyle = bodyText1.copyWith(
    wordSpacing: 2,
    height: 1.5,
    color: AppColors.grey300,
  );
}
