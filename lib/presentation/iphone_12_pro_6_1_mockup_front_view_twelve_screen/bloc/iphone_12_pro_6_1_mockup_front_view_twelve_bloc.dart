import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_twelve_screen/models/iphone_12_pro_6_1_mockup_front_view_twelve_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_twelve_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_twelve_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewTwelve according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewTwelveBloc extends Bloc<
    Iphone12Pro61MockupFrontViewTwelveEvent,
    Iphone12Pro61MockupFrontViewTwelveState> {
  Iphone12Pro61MockupFrontViewTwelveBloc(
      Iphone12Pro61MockupFrontViewTwelveState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewTwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewTwelveInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewTwelveState> emit,
  ) async {}
}
