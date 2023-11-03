import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_fourteen_screen/models/iphone_12_pro_6_1_mockup_front_view_fourteen_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_fourteen_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_fourteen_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewFourteen according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewFourteenBloc extends Bloc<
    Iphone12Pro61MockupFrontViewFourteenEvent,
    Iphone12Pro61MockupFrontViewFourteenState> {
  Iphone12Pro61MockupFrontViewFourteenBloc(
      Iphone12Pro61MockupFrontViewFourteenState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewFourteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewFourteenInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewFourteenState> emit,
  ) async {}
}
