// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_fourteen_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewFourteen in the application.
class Iphone12Pro61MockupFrontViewFourteenState extends Equatable {
  Iphone12Pro61MockupFrontViewFourteenState(
      {this.iphone12Pro61MockupFrontViewFourteenModelObj});

  Iphone12Pro61MockupFrontViewFourteenModel?
      iphone12Pro61MockupFrontViewFourteenModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewFourteenModelObj,
      ];
  Iphone12Pro61MockupFrontViewFourteenState copyWith(
      {Iphone12Pro61MockupFrontViewFourteenModel?
          iphone12Pro61MockupFrontViewFourteenModelObj}) {
    return Iphone12Pro61MockupFrontViewFourteenState(
      iphone12Pro61MockupFrontViewFourteenModelObj:
          iphone12Pro61MockupFrontViewFourteenModelObj ??
              this.iphone12Pro61MockupFrontViewFourteenModelObj,
    );
  }
}
