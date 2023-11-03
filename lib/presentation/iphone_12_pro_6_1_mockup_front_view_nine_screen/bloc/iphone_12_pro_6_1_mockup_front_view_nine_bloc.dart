import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_nine_screen/models/iphone_12_pro_6_1_mockup_front_view_nine_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_nine_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_nine_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewNine according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewNineBloc extends Bloc<
    Iphone12Pro61MockupFrontViewNineEvent,
    Iphone12Pro61MockupFrontViewNineState> {
  Iphone12Pro61MockupFrontViewNineBloc(
      Iphone12Pro61MockupFrontViewNineState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewNineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewNineInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewNineState> emit,
  ) async {}
}
