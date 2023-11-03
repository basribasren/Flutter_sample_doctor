import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_four_screen/models/iphone_12_pro_6_1_mockup_front_view_four_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_four_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_four_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewFour according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewFourBloc extends Bloc<
    Iphone12Pro61MockupFrontViewFourEvent,
    Iphone12Pro61MockupFrontViewFourState> {
  Iphone12Pro61MockupFrontViewFourBloc(
      Iphone12Pro61MockupFrontViewFourState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewFourInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewFourState> emit,
  ) async {}
}
