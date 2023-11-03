// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_seven_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewSeven in the application.
class Iphone12Pro61MockupFrontViewSevenState extends Equatable {
  Iphone12Pro61MockupFrontViewSevenState(
      {this.iphone12Pro61MockupFrontViewSevenModelObj});

  Iphone12Pro61MockupFrontViewSevenModel?
      iphone12Pro61MockupFrontViewSevenModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewSevenModelObj,
      ];
  Iphone12Pro61MockupFrontViewSevenState copyWith(
      {Iphone12Pro61MockupFrontViewSevenModel?
          iphone12Pro61MockupFrontViewSevenModelObj}) {
    return Iphone12Pro61MockupFrontViewSevenState(
      iphone12Pro61MockupFrontViewSevenModelObj:
          iphone12Pro61MockupFrontViewSevenModelObj ??
              this.iphone12Pro61MockupFrontViewSevenModelObj,
    );
  }
}
