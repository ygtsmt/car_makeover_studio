import "package:car_makeover_studio/app/data/app_usecase.dart";
import "package:car_makeover_studio/app/features/auth/login/data/login_usecase.dart";
import "package:car_makeover_studio/core/enums.dart";
import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:injectable/injectable.dart";

part "login_event.dart";
part "login_state.dart";

@singleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._loginUseCase, this._appUseCase) : super(const LoginState());

  final LoginUseCase _loginUseCase;

  final AppUseCase _appUseCase;
}
