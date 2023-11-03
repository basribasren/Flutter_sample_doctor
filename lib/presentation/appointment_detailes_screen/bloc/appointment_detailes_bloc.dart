import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/am_item_model.dart';
import '../models/appointmentdetails_item_model.dart';
import 'package:basri_s_application2/presentation/appointment_detailes_screen/models/appointment_detailes_model.dart';
part 'appointment_detailes_event.dart';
part 'appointment_detailes_state.dart';

/// A bloc that manages the state of a AppointmentDetailes according to the event that is dispatched to it.
class AppointmentDetailesBloc
    extends Bloc<AppointmentDetailesEvent, AppointmentDetailesState> {
  AppointmentDetailesBloc(AppointmentDetailesState initialState)
      : super(initialState) {
    on<AppointmentDetailesInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    AppointmentDetailesInitialEvent event,
    Emitter<AppointmentDetailesState> emit,
  ) async {
    emit(state.copyWith(
        appointmentDetailesModelObj:
            state.appointmentDetailesModelObj?.copyWith(
      amItemList: fillAmItemList(),
      appointmentdetailsItemList: fillAppointmentdetailsItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<AppointmentDetailesState> emit,
  ) {
    List<AmItemModel> newList =
        List<AmItemModel>.from(state.appointmentDetailesModelObj!.amItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        appointmentDetailesModelObj:
            state.appointmentDetailesModelObj?.copyWith(amItemList: newList)));
  }

  List<AmItemModel> fillAmItemList() {
    return List.generate(2, (index) => AmItemModel());
  }

  List<AppointmentdetailsItemModel> fillAppointmentdetailsItemList() {
    return List.generate(3, (index) => AppointmentdetailsItemModel());
  }
}
