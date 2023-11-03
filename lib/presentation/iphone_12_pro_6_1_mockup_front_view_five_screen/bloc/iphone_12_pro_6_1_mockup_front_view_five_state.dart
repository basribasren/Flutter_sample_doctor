// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_five_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewFive in the application.
class Iphone12Pro61MockupFrontViewFiveState extends Equatable {
  Iphone12Pro61MockupFrontViewFiveState(
      {this.iphone12Pro61MockupFrontViewFiveModelObj});

  Iphone12Pro61MockupFrontViewFiveModel?
      iphone12Pro61MockupFrontViewFiveModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewFiveModelObj,
      ];
  Iphone12Pro61MockupFrontViewFiveState copyWith(
      {Iphone12Pro61MockupFrontViewFiveModel?
          iphone12Pro61MockupFrontViewFiveModelObj}) {
    return Iphone12Pro61MockupFrontViewFiveState(
      iphone12Pro61MockupFrontViewFiveModelObj:
          iphone12Pro61MockupFrontViewFiveModelObj ??
              this.iphone12Pro61MockupFrontViewFiveModelObj,
    );
  }
}
