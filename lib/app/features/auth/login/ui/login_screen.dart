
import "package:car_makeover_studio/app/features/auth/login/bloc/login_bloc.dart";
import "package:car_makeover_studio/app/features/auth/login/ui/login_form.dart";
import "package:flutter/material.dart";
import "package:flutter_adaptive_ui/flutter_adaptive_ui.dart";
import "package:flutter_bloc/flutter_bloc.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (final context, final state) {
          /*    if (state.status == EventStatus.success) {
            if (state.account?.garageId == null) {
              context.replaceRoute(GarageScreenRoute(accountId: state.account!.id));
            } else {
              context.replaceRoute(const HomeScreenRoute());
            }
          } */
        },
        builder: (final context, final state) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: AdaptiveBuilder(
                layoutDelegate: const AdaptiveLayoutDelegateWithMinimallScreenType(
                    /*   handset: (final BuildContext context, final Screen screen) {
                    return const LoginForm();
                  }, */
                    /*   tablet: (final BuildContext context, final Screen screen) {
                    return Row(
                      children: const <Widget>[
                        Expanded(
                          child: SideImage(),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 32),
                            child: LoginForm(),
                          ),
                        )
                      ],
                    );
                  }, */
                    /*        desktop: (final BuildContext context, final Screen screen) {
                    /*    return Row(
                      children: <Widget>[
                        const Expanded(
                          flex: 3,
                          child: SideImage(),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 32),
                                child: LoginForm(),
                              ),
                            ],
                          ),
                        )
                      ],
                    ); */
                  }, */
                    ),
                defaultBuilder: (final BuildContext context, final Screen screen) {
                  return const LoginForm();
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
