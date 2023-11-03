// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'am_item_model.dart';
import 'appointmentdetails_item_model.dart';

/// This class defines the variables used in the [appointment_detailes_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AppointmentDetailesModel extends Equatable {
  AppointmentDetailesModel({
    this.amItemList = const [],
    this.appointmentdetailsItemList = const [],
  }) {}

  List<AmItemModel> amItemList;

  List<AppointmentdetailsItemModel> appointmentdetailsItemList;

  AppointmentDetailesModel copyWith({
    List<AmItemModel>? amItemList,
    List<AppointmentdetailsItemModel>? appointmentdetailsItemList,
  }) {
    return AppointmentDetailesModel(
      amItemList: amItemList ?? this.amItemList,
      appointmentdetailsItemList:
          appointmentdetailsItemList ?? this.appointmentdetailsItemList,
    );
  }

  @override
  List<Object?> get props => [amItemList, appointmentdetailsItemList];
}
