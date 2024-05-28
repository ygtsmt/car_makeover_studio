import "package:car_makeover_studio/app/features/home/features/right_list/data/model/last_coin_dto.dart";
import "package:car_makeover_studio/app/features/home/features/right_list/data/right_list_usecase.dart";
import "package:equatable/equatable.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:injectable/injectable.dart";

part "right_list_event.dart";
part "right_list_state.dart";

@singleton
class RightListBloc extends Bloc<RightListEvent, RightListState> {
  RightListBloc(this._rightListUseCase) : super(const RightListInitial()) {
    on<GetRightListEvent>((final event, final emit) async {
      final result = await _rightListUseCase.getRights();
      result.isSuccess == true ? emit(state.copyWith(rightList: result.data?.data)) : emit(state.copyWith());
    });
  }

  final RightListUseCase _rightListUseCase;
}
