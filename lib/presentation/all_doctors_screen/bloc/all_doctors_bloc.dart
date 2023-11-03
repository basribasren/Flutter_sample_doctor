import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/alldoctorslist_item_model.dart';
import 'package:basri_s_application2/presentation/all_doctors_screen/models/all_doctors_model.dart';
part 'all_doctors_event.dart';
part 'all_doctors_state.dart';

/// A bloc that manages the state of a AllDoctors according to the event that is dispatched to it.
class AllDoctorsBloc extends Bloc<AllDoctorsEvent, AllDoctorsState> {
  AllDoctorsBloc(AllDoctorsState initialState) : super(initialState) {
    on<AllDoctorsInitialEvent>(_onInitialize);
  }

  List<AlldoctorslistItemModel> fillAlldoctorslistItemList() {
    return [
      AlldoctorslistItemModel(
          drPawan: ImageConstant.imgDoctorBulkBil,
          weburl: "Dr.Pawan",
          drPawan1: ImageConstant.imgFramePrimary,
          joremIpsumDolor:
              "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
          fifty: "5.0"),
      AlldoctorslistItemModel(
          drPawan: ImageConstant.imgImage13RemovebgPreview,
          weburl: "Dr.Wanitha",
          drPawan1: ImageConstant.imgFramePrimary20x20,
          joremIpsumDolor:
              "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
          fifty: "5.0"),
      AlldoctorslistItemModel(
          drPawan: ImageConstant.imgIstockphoto138,
          weburl: "Dr.Udara",
          drPawan1: ImageConstant.imgFramePrimary,
          joremIpsumDolor:
              "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
          fifty: "5.0"),
      AlldoctorslistItemModel(
          drPawan: ImageConstant.imgDoctorBulkBil,
          weburl: "Dr.Pawan",
          drPawan1: ImageConstant.imgFramePrimary,
          joremIpsumDolor:
              "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
          fifty: "5.0")
    ];
  }

  _onInitialize(
    AllDoctorsInitialEvent event,
    Emitter<AllDoctorsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        allDoctorsModelObj: state.allDoctorsModelObj?.copyWith(
      alldoctorslistItemList: fillAlldoctorslistItemList(),
    )));
  }
}
