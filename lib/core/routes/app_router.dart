// ignore_for_file: unused_import, dead_code

import "package:auto_route/auto_route.dart";
import "package:auto_route/empty_router_widgets.dart";
import "package:car_makeover_studio/app/bloc/app_bloc.dart";
import "package:car_makeover_studio/app/features/auth/login/ui/login_screen.dart";
import "package:car_makeover_studio/app/features/auth/splash/ui/splash_screen.dart";
import 'package:car_makeover_studio/app/features/home/ui/screens/home_screen.dart';
import "package:car_makeover_studio/app/features/nft/ui/NFT_screen.dart";
import "package:car_makeover_studio/app/features/projects/ui/projects_screen.dart";
import "package:car_makeover_studio/app/features/start/ui/start_screen.dart";
import "package:car_makeover_studio/app/features/templates/ui/templates_screen.dart";
import 'package:car_makeover_studio/app/ui/base_screen.dart';
import "package:car_makeover_studio/core/injection/injection.dart";
import "package:flutter/material.dart";
import "package:injectable/injectable.dart";

part "app_router.gr.dart";

@MaterialAutoRouter(
  routes: <CustomRoute>[
    CustomRoute(page: SplashScreen, path: "/", initial: true, transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: LoginScreen, path: "/login", transitionsBuilder: TransitionsBuilders.fadeIn),
    CustomRoute(page: BaseScreen, path: "/base", transitionsBuilder: TransitionsBuilders.fadeIn, children: [
      CustomRoute(
        page: EmptyRouterPage,
        path: "home",
        transitionsBuilder: TransitionsBuilders.fadeIn,
        name: "HomeTabRouter",
        children: [
          CustomRoute(
            page: HomeScreen,
            path: "home-screen",
            transitionsBuilder: TransitionsBuilders.fadeIn,
            initial: true,
          )
        ],
      ),
      CustomRoute(
        page: EmptyRouterPage,
        path: "projects",
        transitionsBuilder: TransitionsBuilders.fadeIn,
        name: "ProjectTabRouter",
        children: [
          CustomRoute(
            page: ProjectsScreen,
            path: "project-screen",
            transitionsBuilder: TransitionsBuilders.fadeIn,
            initial: true,
          )
        ],
      ),
      CustomRoute(
        page: EmptyRouterPage,
        path: "start",
        transitionsBuilder: TransitionsBuilders.fadeIn,
        name: "StartTabRouter",
        children: [
          CustomRoute(
            page: StartScreen,
            path: "start-screen",
            transitionsBuilder: TransitionsBuilders.fadeIn,
            initial: true,
          )
        ],
      ),
      CustomRoute(
        page: EmptyRouterPage,
        path: "templates",
        transitionsBuilder: TransitionsBuilders.fadeIn,
        name: "TemplatesTabRouter",
        children: [
          CustomRoute(
            page: TemplatesScreen,
            path: "templates-screen",
            transitionsBuilder: TransitionsBuilders.fadeIn,
            initial: true,
          )
        ],
      ),
      CustomRoute(
        page: EmptyRouterPage,
        path: "nft",
        transitionsBuilder: TransitionsBuilders.fadeIn,
        name: "NFTTabRouter",
        children: [
          CustomRoute(
            page: NFTScreen,
            path: "nft-screen",
            transitionsBuilder: TransitionsBuilders.fadeIn,
            initial: true,
          )
        ],
      ),
    ]),
  ],
)
@injectable
class AppRouter extends _$AppRouter {
  AppRouter() : super();
}
