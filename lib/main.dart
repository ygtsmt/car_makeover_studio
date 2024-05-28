import "package:car_makeover_studio/app/ui/app_screen.dart";
import "package:car_makeover_studio/core/injection/injection.dart";
import "package:flutter/material.dart";
import "package:url_strategy/url_strategy.dart";

void main() async {
  // GoogleFonts.config.allowRuntimeFetching = false;
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  setPathUrlStrategy();
//  await getIt<ThemeService>().setSavedThemeMode();

  runApp(const AppScreen());
}
