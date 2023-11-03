import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_seven_screen/models/iphone_12_pro_6_1_mockup_front_view_seven_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_seven_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_seven_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewSeven according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewSevenBloc extends Bloc<
    Iphone12Pro61MockupFrontViewSevenEvent,
    Iphone12Pro61MockupFrontViewSevenState> {
  Iphone12Pro61MockupFrontViewSevenBloc(
      Iphone12Pro61MockupFrontViewSevenState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewSevenInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewSevenState> emit,
  ) async {}
}
