import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_ten_screen/models/iphone_12_pro_6_1_mockup_front_view_ten_model.dart';
part 'iphone_12_pro_6_1_mockup_front_view_ten_event.dart';
part 'iphone_12_pro_6_1_mockup_front_view_ten_state.dart';

/// A bloc that manages the state of a Iphone12Pro61MockupFrontViewTen according to the event that is dispatched to it.
class Iphone12Pro61MockupFrontViewTenBloc extends Bloc<
    Iphone12Pro61MockupFrontViewTenEvent,
    Iphone12Pro61MockupFrontViewTenState> {
  Iphone12Pro61MockupFrontViewTenBloc(
      Iphone12Pro61MockupFrontViewTenState initialState)
      : super(initialState) {
    on<Iphone12Pro61MockupFrontViewTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone12Pro61MockupFrontViewTenInitialEvent event,
    Emitter<Iphone12Pro61MockupFrontViewTenState> emit,
  ) async {}
}
