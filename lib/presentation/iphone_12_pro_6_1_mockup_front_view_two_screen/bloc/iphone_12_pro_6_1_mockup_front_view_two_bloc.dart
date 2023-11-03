import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_two_screen/models/iphone_12_pro_6_1_mockup_front_view_two_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_two_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_two_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewTwo according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewTwoBloc extends Bloc<
    Iphone12Pro61MockupFrontViewTwoEvent,
    Iphone12Pro61MockupFrontViewTwoState> {
  Iphone12Pro61MockupFrontViewTwoBloc(
      Iphone12Pro61MockupFrontViewTwoState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewTwoInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewTwoState> emit,
  ) async {}
}
