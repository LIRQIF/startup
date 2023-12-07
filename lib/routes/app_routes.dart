import 'package:flutter/material.dart';
import 'package:sabung_pinjol/presentation/android_large_two_screen/android_large_two_screen.dart';
import 'package:sabung_pinjol/presentation/android_large_three_screen/android_large_three_screen.dart';
import 'package:sabung_pinjol/presentation/android_large_four_screen/android_large_four_screen.dart';
import 'package:sabung_pinjol/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String androidLargeFourScreen = '/android_large_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        androidLargeTwoScreen: AndroidLargeTwoScreen.builder,
        androidLargeThreeScreen: AndroidLargeThreeScreen.builder,
        androidLargeFourScreen: AndroidLargeFourScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: AndroidLargeTwoScreen.builder
      };
}
