import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/calling_screen/models/calling_model.dart';
part 'calling_event.dart';
part 'calling_state.dart';

/// A bloc that manages the state of a Calling according to the event that is dispatched to it.
class CallingBloc extends Bloc<CallingEvent, CallingState> {
  CallingBloc(CallingState initialState) : super(initialState) {
    on<CallingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CallingInitialEvent event,
    Emitter<CallingState> emit,
  ) async {}
}
