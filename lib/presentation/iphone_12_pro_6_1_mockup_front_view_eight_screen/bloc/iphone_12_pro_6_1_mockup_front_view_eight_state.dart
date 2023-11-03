// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_eight_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewEight in the application.
class Iphone12Pro61MockupFrontViewEightState extends Equatable {
  Iphone12Pro61MockupFrontViewEightState(
      {this.iphone12Pro61MockupFrontViewEightModelObj});

  Iphone12Pro61MockupFrontViewEightModel?
      iphone12Pro61MockupFrontViewEightModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewEightModelObj,
      ];
  Iphone12Pro61MockupFrontViewEightState copyWith(
      {Iphone12Pro61MockupFrontViewEightModel?
          iphone12Pro61MockupFrontViewEightModelObj}) {
    return Iphone12Pro61MockupFrontViewEightState(
      iphone12Pro61MockupFrontViewEightModelObj:
          iphone12Pro61MockupFrontViewEightModelObj ??
              this.iphone12Pro61MockupFrontViewEightModelObj,
    );
  }
}
