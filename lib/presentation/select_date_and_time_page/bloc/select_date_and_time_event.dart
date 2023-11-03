// ignore_for_file: must_be_immutable

part of 'select_date_and_time_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectDateAndTime widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectDateAndTimeEvent extends Equatable {}

/// Event that is dispatched when the SelectDateAndTime widget is first created.
class SelectDateAndTimeInitialEvent extends SelectDateAndTimeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SelectDateAndTimeEvent {
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
