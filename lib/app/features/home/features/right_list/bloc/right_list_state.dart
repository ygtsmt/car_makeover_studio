part of "right_list_bloc.dart";

class RightListState extends Equatable {
  const RightListState({
    required this.rightList,
  });

  final List<LastCoinDto> rightList;

  RightListState copyWith({
    final List<LastCoinDto>? rightList,
  }) {
    return RightListState(
      rightList: rightList ?? this.rightList,
    );
  }

  @override
  List<Object> get props => [
        rightList,
      ];
}

class RightListInitial extends RightListState {
  const RightListInitial()
      : super(
          rightList: const [],
        );
}
