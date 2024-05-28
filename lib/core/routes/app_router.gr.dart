// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BaseScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const BaseScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeTabRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProjectTabRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StartTabRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TemplatesTabRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NFTTabRouter.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProjectsScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ProjectsScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StartScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const StartScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TemplatesScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const TemplatesScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NFTScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const NFTScreen(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          LoginScreenRoute.name,
          path: '/login',
        ),
        RouteConfig(
          BaseScreenRoute.name,
          path: '/base',
          children: [
            RouteConfig(
              HomeTabRouter.name,
              path: 'home',
              parent: BaseScreenRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: HomeTabRouter.name,
                  redirectTo: 'home-screen',
                  fullMatch: true,
                ),
                RouteConfig(
                  HomeScreenRoute.name,
                  path: 'home-screen',
                  parent: HomeTabRouter.name,
                ),
              ],
            ),
            RouteConfig(
              ProjectTabRouter.name,
              path: 'projects',
              parent: BaseScreenRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: ProjectTabRouter.name,
                  redirectTo: 'project-screen',
                  fullMatch: true,
                ),
                RouteConfig(
                  ProjectsScreenRoute.name,
                  path: 'project-screen',
                  parent: ProjectTabRouter.name,
                ),
              ],
            ),
            RouteConfig(
              StartTabRouter.name,
              path: 'start',
              parent: BaseScreenRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: StartTabRouter.name,
                  redirectTo: 'start-screen',
                  fullMatch: true,
                ),
                RouteConfig(
                  StartScreenRoute.name,
                  path: 'start-screen',
                  parent: StartTabRouter.name,
                ),
              ],
            ),
            RouteConfig(
              TemplatesTabRouter.name,
              path: 'templates',
              parent: BaseScreenRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: TemplatesTabRouter.name,
                  redirectTo: 'templates-screen',
                  fullMatch: true,
                ),
                RouteConfig(
                  TemplatesScreenRoute.name,
                  path: 'templates-screen',
                  parent: TemplatesTabRouter.name,
                ),
              ],
            ),
            RouteConfig(
              NFTTabRouter.name,
              path: 'nft',
              parent: BaseScreenRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: NFTTabRouter.name,
                  redirectTo: 'nft-screen',
                  fullMatch: true,
                ),
                RouteConfig(
                  NFTScreenRoute.name,
                  path: 'nft-screen',
                  parent: NFTTabRouter.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [LoginScreen]
class LoginScreenRoute extends PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [BaseScreen]
class BaseScreenRoute extends PageRouteInfo<void> {
  const BaseScreenRoute({List<PageRouteInfo>? children})
      : super(
          BaseScreenRoute.name,
          path: '/base',
          initialChildren: children,
        );

  static const String name = 'BaseScreenRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeTabRouter extends PageRouteInfo<void> {
  const HomeTabRouter({List<PageRouteInfo>? children})
      : super(
          HomeTabRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeTabRouter';
}

/// generated route for
/// [EmptyRouterPage]
class ProjectTabRouter extends PageRouteInfo<void> {
  const ProjectTabRouter({List<PageRouteInfo>? children})
      : super(
          ProjectTabRouter.name,
          path: 'projects',
          initialChildren: children,
        );

  static const String name = 'ProjectTabRouter';
}

/// generated route for
/// [EmptyRouterPage]
class StartTabRouter extends PageRouteInfo<void> {
  const StartTabRouter({List<PageRouteInfo>? children})
      : super(
          StartTabRouter.name,
          path: 'start',
          initialChildren: children,
        );

  static const String name = 'StartTabRouter';
}

/// generated route for
/// [EmptyRouterPage]
class TemplatesTabRouter extends PageRouteInfo<void> {
  const TemplatesTabRouter({List<PageRouteInfo>? children})
      : super(
          TemplatesTabRouter.name,
          path: 'templates',
          initialChildren: children,
        );

  static const String name = 'TemplatesTabRouter';
}

/// generated route for
/// [EmptyRouterPage]
class NFTTabRouter extends PageRouteInfo<void> {
  const NFTTabRouter({List<PageRouteInfo>? children})
      : super(
          NFTTabRouter.name,
          path: 'nft',
          initialChildren: children,
        );

  static const String name = 'NFTTabRouter';
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: 'home-screen',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [ProjectsScreen]
class ProjectsScreenRoute extends PageRouteInfo<void> {
  const ProjectsScreenRoute()
      : super(
          ProjectsScreenRoute.name,
          path: 'project-screen',
        );

  static const String name = 'ProjectsScreenRoute';
}

/// generated route for
/// [StartScreen]
class StartScreenRoute extends PageRouteInfo<void> {
  const StartScreenRoute()
      : super(
          StartScreenRoute.name,
          path: 'start-screen',
        );

  static const String name = 'StartScreenRoute';
}

/// generated route for
/// [TemplatesScreen]
class TemplatesScreenRoute extends PageRouteInfo<void> {
  const TemplatesScreenRoute()
      : super(
          TemplatesScreenRoute.name,
          path: 'templates-screen',
        );

  static const String name = 'TemplatesScreenRoute';
}

/// generated route for
/// [NFTScreen]
class NFTScreenRoute extends PageRouteInfo<void> {
  const NFTScreenRoute()
      : super(
          NFTScreenRoute.name,
          path: 'nft-screen',
        );

  static const String name = 'NFTScreenRoute';
}
