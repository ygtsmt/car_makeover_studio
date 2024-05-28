import "package:auto_route/auto_route.dart";
import "package:car_makeover_studio/app/bloc/app_bloc.dart";
import "package:car_makeover_studio/core/routes/app_router.dart";
import "package:flutter/material.dart";
import "package:flutter_adaptive_ui/flutter_adaptive_ui.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (final context, final state) {
        return AutoTabsRouter(
          routes: const [
            HomeTabRouter(),
            ProjectTabRouter(),
            StartTabRouter(),
            TemplatesTabRouter(),
            NFTTabRouter(),
          ],
          builder: (final context, final child, final animation) {
            final tabsRouter = AutoTabsRouter.of(context);
            final screen = Screen.fromContext(context);

            return GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Scaffold(
                appBar: AppBar(
                  leading: const AutoLeadingButton(),
                  elevation: screen.isHandset ? 0 : 1,
                  scrolledUnderElevation: screen.isHandset ? 0 : 1,
                  backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
                  title: Center(
                    child: Container(
                      height: 40,
                    ),
                  ),
                ),
                body: SafeArea(
                  child: AdaptiveBuilder(
                    layoutDelegate: AdaptiveLayoutDelegateWithMinimallScreenType(
                      handset: (final BuildContext context, final Screen screen) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                          child: child,
                        );
                      },
                      tablet: (final BuildContext context, final Screen screen) {
                        return Row(
                          children: [
                            const Expanded(
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                                child: child,
                              ),
                            ),
                          ],
                        );
                      },
                      desktop: (final BuildContext context, final Screen screen) {
                        return Row(
                          children: [
                            const Expanded(
                              flex: 3,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 8,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                                child: child,
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: MediaQuery.of(context).size.height * 0.1,
                                ),
                                child: const SizedBox(),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    defaultBuilder: (final BuildContext context, final Screen screen) {
                      return child;
                    },
                  ),
                ),
                bottomNavigationBar: screen.isHandset
                    ? Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).shadowColor,
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: BottomNavigationBar(
                          enableFeedback: true,
                          elevation: 0,
                          type: BottomNavigationBarType.fixed,
                          showSelectedLabels: true,
                          showUnselectedLabels: true,
                          items: const <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: Icon(Icons.dashboard_outlined),
                              label: 'Home',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.track_changes),
                              label: 'Projects',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.add),
                              label: '',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.directions_car_filled_outlined),
                              label: 'Templates',
                            ),
                            BottomNavigationBarItem(
                              icon: Icon(Icons.directions_car_filled_outlined),
                              label: 'NFT',
                            ),
                          ],
                          currentIndex: tabsRouter.activeIndex,
                          onTap: tabsRouter.setActiveIndex,
                        ),
                      )
                    : null,
              ),
            );
          },
        );
      },
    );
  }
}
