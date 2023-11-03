// ignore_for_file: must_be_immutable

part of 'appointment_detailes_bloc.dart';

/// Represents the state of AppointmentDetailes in the application.
class AppointmentDetailesState extends Equatable {
  AppointmentDetailesState({this.appointmentDetailesModelObj});

  AppointmentDetailesModel? appointmentDetailesModelObj;

  @override
  List<Object?> get props => [
        appointmentDetailesModelObj,
      ];
  AppointmentDetailesState copyWith(
      {AppointmentDetailesModel? appointmentDetailesModelObj}) {
    return AppointmentDetailesState(
      appointmentDetailesModelObj:
          appointmentDetailesModelObj ?? this.appointmentDetailesModelObj,
    );
  }
}
