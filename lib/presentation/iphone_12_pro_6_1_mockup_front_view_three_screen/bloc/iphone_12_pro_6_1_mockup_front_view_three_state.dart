// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_three_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewThree in the application.
class Iphone12Pro61MockupFrontViewThreeState extends Equatable {
  Iphone12Pro61MockupFrontViewThreeState(
      {this.iphone12Pro61MockupFrontViewThreeModelObj});

  Iphone12Pro61MockupFrontViewThreeModel?
      iphone12Pro61MockupFrontViewThreeModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewThreeModelObj,
      ];
  Iphone12Pro61MockupFrontViewThreeState copyWith(
      {Iphone12Pro61MockupFrontViewThreeModel?
          iphone12Pro61MockupFrontViewThreeModelObj}) {
    return Iphone12Pro61MockupFrontViewThreeState(
      iphone12Pro61MockupFrontViewThreeModelObj:
          iphone12Pro61MockupFrontViewThreeModelObj ??
              this.iphone12Pro61MockupFrontViewThreeModelObj,
    );
  }
}
