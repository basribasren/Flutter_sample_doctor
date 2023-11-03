import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_eleven_screen/models/iphone_12_pro_6_1_mockup_front_view_eleven_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_eleven_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_eleven_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewEleven according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewElevenBloc extends Bloc<
    Iphone12Pro61MockupFrontViewElevenEvent,
    Iphone12Pro61MockupFrontViewElevenState> {
  Iphone12Pro61MockupFrontViewElevenBloc(
      Iphone12Pro61MockupFrontViewElevenState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewElevenInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewElevenState> emit,
  ) async {}
}
