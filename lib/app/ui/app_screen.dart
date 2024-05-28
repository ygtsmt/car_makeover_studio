import "package:car_makeover_studio/app/bloc/app_bloc.dart";
import "package:car_makeover_studio/app/features/auth/login/bloc/login_bloc.dart";
import "package:car_makeover_studio/app/features/auth/splash/bloc/splash_bloc.dart";
import "package:car_makeover_studio/app/features/home/bloc/home_bloc.dart";
import "package:car_makeover_studio/app/features/home/features/right_list/bloc/right_list_bloc.dart";
import "package:car_makeover_studio/app/features/nft/bloc/nft_bloc.dart";
import "package:car_makeover_studio/app/features/projects/bloc/projects_bloc.dart";
import "package:car_makeover_studio/app/features/start/bloc/start_bloc.dart";
import "package:car_makeover_studio/app/features/templates/bloc/templates_bloc.dart";
import "package:car_makeover_studio/core/color_schemes.g.dart";
import "package:car_makeover_studio/core/injection/injection.dart";
import "package:car_makeover_studio/core/keys.dart";
import "package:car_makeover_studio/core/routes/app_router.dart";
import "package:car_makeover_studio/generated/l10n.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_localizations/flutter_localizations.dart";
import "package:google_fonts/google_fonts.dart";

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();

    if (kIsWeb) {
      final String defaultRouteName = WidgetsBinding.instance.window.defaultRouteName;
      if (defaultRouteName != "/") {
        SystemNavigator.routeInformationUpdated(location: "/", replace: true);
      }
    }
  }

  @override
  Widget build(final BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (final context) => getIt<AppBloc>(),
        ),
        BlocProvider<SplashBloc>(
          create: (final context) => getIt<SplashBloc>(),
        ),
        BlocProvider<LoginBloc>(
          create: (final context) => getIt<LoginBloc>(),
        ),
        BlocProvider<HomeBloc>(
          create: (final context) => getIt<HomeBloc>(),
        ),
        BlocProvider<ProjectsBloc>(
          create: (final context) => getIt<ProjectsBloc>(),
        ),
        BlocProvider<StartBloc>(
          create: (final context) => getIt<StartBloc>(),
        ),
        BlocProvider<TemplatesBloc>(
          create: (final context) => getIt<TemplatesBloc>(),
        ),
        BlocProvider<NftBloc>(
          create: (final context) => getIt<NftBloc>(),
        ),
        BlocProvider<RightListBloc>(
          create: (final context) => getIt<RightListBloc>(),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (final context, final state) {
          return MaterialApp.router(
            scaffoldMessengerKey: snackbarKey,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: AppLocalizations.delegate.supportedLocales,
            theme: ThemeData(
              useMaterial3: false,
              colorScheme: lightColorScheme,
              fontFamily: GoogleFonts.lato().fontFamily,
            ),
            darkTheme: ThemeData(
              useMaterial3: false,
              colorScheme: darkColorScheme,
              fontFamily: GoogleFonts.lato().fontFamily,
            ),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
