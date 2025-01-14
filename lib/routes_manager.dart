import 'package:flutter/material.dart';
import 'package:quran_app/presentation/screens/azkar_screen.dart';
import 'package:quran_app/presentation/screens/home_screen.dart';
import 'package:quran_app/presentation/screens/qabilh_screen.dart';
import 'package:quran_app/presentation/screens/reading_list_screen.dart';
import 'package:quran_app/presentation/screens/settings_screen.dart';
import 'package:quran_app/presentation/screens/splash_screen.dart';
import 'package:quran_app/presentation/screens/surah_screen.dart';

class Routes {
  static const String splashScreenRoute = '/';
  static const String homeScreenRoute = '/home';
  static const String readingListScreenRoute = '/readingList';
  static const String surahScreenRoute = '/surah';
  static const String settingsScreenRoute = '/settings';
  static const String azkarScreenRoute = '/AzkarScreen';
  static const String qiblaScreenRoute = '/QiblaScreen';
}

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.homeScreenRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case Routes.readingListScreenRoute:
        return MaterialPageRoute(builder: (_) => const ReadingListScreen());

      case Routes.surahScreenRoute:
        return MaterialPageRoute(builder: (_) {
          SurahScreen arguments = settings.arguments as SurahScreen;
          return SurahScreen(
            surahNumber: arguments.surahNumber,
          );
        });

      case Routes.settingsScreenRoute:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());

      case Routes.azkarScreenRoute:
        return MaterialPageRoute(builder: (_) => AzkarScreen());
       case Routes.qiblaScreenRoute:
        return MaterialPageRoute(builder: (_) => const QiblaScreen()); 

    }
  }
}
