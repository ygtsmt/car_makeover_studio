import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'nft_event.dart';
part 'nft_state.dart';

class NftBloc extends Bloc<NftEvent, NftState> {
  NftBloc() : super(NftInitial());

  @override
  Stream<NftState> mapEventToState(
    NftEvent event,
  ) async* {
  }
}
