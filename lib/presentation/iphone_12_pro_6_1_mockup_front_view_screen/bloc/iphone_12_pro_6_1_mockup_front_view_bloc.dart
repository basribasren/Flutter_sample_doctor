import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_screen/models/iphone_12_pro_6_1_mockup_front_view_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontView according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewBloc extends Bloc<
    Iphone12Pro61MockupFrontViewEvent, Iphone12Pro61MockupFrontViewState> {
  Iphone12Pro61MockupFrontViewBloc(
      Iphone12Pro61MockupFrontViewState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewState> emit,
  ) async {}
}
