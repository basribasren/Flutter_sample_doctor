// ignore_for_file: must_be_immutable

part of 'calling_bloc.dart';

/// Represents the state of Calling in the application.
class CallingState extends Equatable {
  CallingState({this.callingModelObj});

  CallingModel? callingModelObj;

  @override
  List<Object?> get props => [
        callingModelObj,
      ];
  CallingState copyWith({CallingModel? callingModelObj}) {
    return CallingState(
      callingModelObj: callingModelObj ?? this.callingModelObj,
    );
  }
}
