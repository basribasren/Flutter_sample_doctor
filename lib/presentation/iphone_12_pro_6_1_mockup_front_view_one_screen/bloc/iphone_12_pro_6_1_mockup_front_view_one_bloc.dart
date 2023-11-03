import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_one_screen/models/iphone_12_pro_6_1_mockup_front_view_one_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_one_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_one_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewOne according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewOneBloc extends Bloc<
    Iphone12Pro61MockupFrontViewOneEvent,
    Iphone12Pro61MockupFrontViewOneState> {
  Iphone12Pro61MockupFrontViewOneBloc(
      Iphone12Pro61MockupFrontViewOneState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewOneInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewOneState> emit,
  ) async {}
}
