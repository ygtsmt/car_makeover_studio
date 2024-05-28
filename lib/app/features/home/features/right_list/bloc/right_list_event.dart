part of "right_list_bloc.dart";

abstract class RightListEvent extends Equatable {
  const RightListEvent();

  @override
  List<Object> get props => [];
}

class GetRightListEvent extends RightListEvent {}

