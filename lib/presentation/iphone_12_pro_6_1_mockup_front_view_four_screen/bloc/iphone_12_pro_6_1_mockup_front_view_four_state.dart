// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_four_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewFour in the application.
class Iphone12Pro61MockupFrontViewFourState extends Equatable {
  Iphone12Pro61MockupFrontViewFourState(
      {this.iphone12Pro61MockupFrontViewFourModelObj});

  Iphone12Pro61MockupFrontViewFourModel?
      iphone12Pro61MockupFrontViewFourModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewFourModelObj,
      ];
  Iphone12Pro61MockupFrontViewFourState copyWith(
      {Iphone12Pro61MockupFrontViewFourModel?
          iphone12Pro61MockupFrontViewFourModelObj}) {
    return Iphone12Pro61MockupFrontViewFourState(
      iphone12Pro61MockupFrontViewFourModelObj:
          iphone12Pro61MockupFrontViewFourModelObj ??
              this.iphone12Pro61MockupFrontViewFourModelObj,
    );
  }
}
