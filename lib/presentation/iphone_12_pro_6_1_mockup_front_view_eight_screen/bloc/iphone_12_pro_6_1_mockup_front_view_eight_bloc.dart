import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_eight_screen/models/iphone_12_pro_6_1_mockup_front_view_eight_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_eight_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_eight_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewEight according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewEightBloc extends Bloc<
    Iphone12Pro61MockupFrontViewEightEvent,
    Iphone12Pro61MockupFrontViewEightState> {
  Iphone12Pro61MockupFrontViewEightBloc(
      Iphone12Pro61MockupFrontViewEightState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewEightInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewEightState> emit,
  ) async {}
}
