import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'templates_event.dart';
part 'templates_state.dart';

class TemplatesBloc extends Bloc<TemplatesEvent, TemplatesState> {
  TemplatesBloc() : super(TemplatesInitial());

  @override
  Stream<TemplatesState> mapEventToState(
    TemplatesEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
