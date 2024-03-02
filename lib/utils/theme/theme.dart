import 'package:flutter/material.dart';
import 'package:techplied_app/utils/theme/custom_theme/appBar_theme.dart';
import 'package:techplied_app/utils/theme/custom_theme/bottomSheet_theme.dart';
import 'package:techplied_app/utils/theme/custom_theme/checkBox_theme.dart';
import 'package:techplied_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:techplied_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:techplied_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:techplied_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:techplied_app/utils/theme/custom_theme/text_theme.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedTheme.lightElevatedTheme,
    appBarTheme: TopAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: AppCheckBox.lightCheckBoxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    outlinedButtonTheme: AppOutlinedButton.lightOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.lightTextFieldTheme,
  );
  static ThemeData darkTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedTheme.darkElevatedTheme,
    appBarTheme: TopAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: AppBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: AppCheckBox.darkCheckBoxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    outlinedButtonTheme: AppOutlinedButton.darkOutlinedButtonTheme,
    inputDecorationTheme: AppTextFieldTheme.darkTextFieldTheme,
  );
  
}