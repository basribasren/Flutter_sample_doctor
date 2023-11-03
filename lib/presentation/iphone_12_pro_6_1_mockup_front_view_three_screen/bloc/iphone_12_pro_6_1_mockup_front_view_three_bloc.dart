import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_three_screen/models/iphone_12_pro_6_1_mockup_front_view_three_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_three_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_three_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewThree according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewThreeBloc extends Bloc<
    Iphone12Pro61MockupFrontViewThreeEvent,
    Iphone12Pro61MockupFrontViewThreeState> {
  Iphone12Pro61MockupFrontViewThreeBloc(
      Iphone12Pro61MockupFrontViewThreeState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewThreeInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewThreeState> emit,
  ) async {}
}
