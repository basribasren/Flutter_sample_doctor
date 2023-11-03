import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_six_screen/models/iphone_12_pro_6_1_mockup_front_view_six_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_six_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_six_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewSix according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewSixBloc extends Bloc<
    Iphone12Pro61MockupFrontViewSixEvent,
    Iphone12Pro61MockupFrontViewSixState> {
  Iphone12Pro61MockupFrontViewSixBloc(
      Iphone12Pro61MockupFrontViewSixState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewSixInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewSixState> emit,
  ) async {}
}
