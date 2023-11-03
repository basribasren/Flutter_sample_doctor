import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_thirteen_screen/models/iphone_12_pro_6_1_mockup_front_view_thirteen_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_thirteen_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_thirteen_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewThirteen according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewThirteenBloc extends Bloc<
    Iphone12Pro61MockupFrontViewThirteenEvent,
    Iphone12Pro61MockupFrontViewThirteenState> {
  Iphone12Pro61MockupFrontViewThirteenBloc(
      Iphone12Pro61MockupFrontViewThirteenState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewThirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewThirteenInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewThirteenState> emit,
  ) async {}
}
