import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techplied_app/features/authentication/screens/OnBoarding/on_boarding.dart';
import 'package:techplied_app/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
