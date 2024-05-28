import "package:car_makeover_studio/app/features/auth/splash/data/splash_usecase.dart";
import "package:car_makeover_studio/core/enums.dart";
import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:injectable/injectable.dart";

part "splash_event.dart";
part "splash_state.dart";

@singleton
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(this._splashUseCase) : super(const SplashState());

  final SplashUseCase _splashUseCase;
}
