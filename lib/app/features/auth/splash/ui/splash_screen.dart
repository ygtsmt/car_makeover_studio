import "package:auto_route/auto_route.dart";
import "package:car_makeover_studio/app/features/auth/splash/bloc/splash_bloc.dart";
import "package:car_makeover_studio/core/routes/app_router.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.replaceRoute(const BaseScreenRoute());

    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (final context, final state) {
        Future.delayed(
          const Duration(minutes: 2),
          () {
            return context.replaceRoute(const HomeTabRouter());
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
