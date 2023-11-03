// ignore_for_file: must_be_immutable

part of 'select_date_and_time_bloc.dart';

/// Represents the state of SelectDateAndTime in the application.
class SelectDateAndTimeState extends Equatable {
  SelectDateAndTimeState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.selectDateAndTimeModelObj,
  });

  SelectDateAndTimeModel? selectDateAndTimeModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        selectDateAndTimeModelObj,
      ];
  SelectDateAndTimeState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    SelectDateAndTimeModel? selectDateAndTimeModelObj,
  }) {
    return SelectDateAndTimeState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      selectDateAndTimeModelObj:
          selectDateAndTimeModelObj ?? this.selectDateAndTimeModelObj,
    );
  }
}
