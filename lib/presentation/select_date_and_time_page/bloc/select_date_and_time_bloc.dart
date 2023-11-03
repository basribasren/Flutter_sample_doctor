import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/am2_item_model.dart';
import 'package:basri_s_application2/presentation/select_date_and_time_page/models/select_date_and_time_model.dart';
part 'select_date_and_time_event.dart';
part 'select_date_and_time_state.dart';

/// A bloc that manages the state of a SelectDateAndTime according to the event that is dispatched to it.
class SelectDateAndTimeBloc
    extends Bloc<SelectDateAndTimeEvent, SelectDateAndTimeState> {
  SelectDateAndTimeBloc(SelectDateAndTimeState initialState)
      : super(initialState) {
    on<SelectDateAndTimeInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SelectDateAndTimeState> emit,
  ) {
    List<Am2ItemModel> newList =
        List<Am2ItemModel>.from(state.selectDateAndTimeModelObj!.am2ItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        selectDateAndTimeModelObj:
            state.selectDateAndTimeModelObj?.copyWith(am2ItemList: newList)));
  }

  List<Am2ItemModel> fillAm2ItemList() {
    return List.generate(2, (index) => Am2ItemModel());
  }

  _onInitialize(
    SelectDateAndTimeInitialEvent event,
    Emitter<SelectDateAndTimeState> emit,
  ) async {
    emit(state.copyWith(
      rangeSelectionMode: RangeSelectionMode.toggledOn,
    ));
    emit(state.copyWith(
        selectDateAndTimeModelObj: state.selectDateAndTimeModelObj?.copyWith(
      am2ItemList: fillAm2ItemList(),
    )));
  }
}
