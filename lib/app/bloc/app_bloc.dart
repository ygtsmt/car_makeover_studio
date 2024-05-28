import "package:car_makeover_studio/app/data/app_usecase.dart";
import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:injectable/injectable.dart";

part "app_event.dart";
part "app_state.dart";

@singleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(this._appUseCase) : super(const AppState());

  final AppUseCase _appUseCase;
}
