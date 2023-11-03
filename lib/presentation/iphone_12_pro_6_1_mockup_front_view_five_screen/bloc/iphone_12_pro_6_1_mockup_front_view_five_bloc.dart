import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_five_screen/models/iphone_12_pro_6_1_mockup_front_view_five_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_five_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_five_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewFive according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewFiveBloc extends Bloc<
    Iphone12Pro61MockupFrontViewFiveEvent,
    Iphone12Pro61MockupFrontViewFiveState> {
  Iphone12Pro61MockupFrontViewFiveBloc(
      Iphone12Pro61MockupFrontViewFiveState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewFiveInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewFiveState> emit,
  ) async {}
}
