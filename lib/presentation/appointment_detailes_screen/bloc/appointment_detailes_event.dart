// ignore_for_file: must_be_immutable

part of 'appointment_detailes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AppointmentDetailes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AppointmentDetailesEvent extends Equatable {}

/// Event that is dispatched when the AppointmentDetailes widget is first created.
class AppointmentDetailesInitialEvent extends AppointmentDetailesEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends AppointmentDetailesEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
