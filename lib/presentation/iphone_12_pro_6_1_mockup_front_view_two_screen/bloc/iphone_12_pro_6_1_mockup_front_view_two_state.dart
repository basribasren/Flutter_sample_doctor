// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_two_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewTwo in the application.
class Iphone12Pro61MockupFrontViewTwoState extends Equatable {
  Iphone12Pro61MockupFrontViewTwoState(
      {this.iphone12Pro61MockupFrontViewTwoModelObj});

  Iphone12Pro61MockupFrontViewTwoModel? iphone12Pro61MockupFrontViewTwoModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewTwoModelObj,
      ];
  Iphone12Pro61MockupFrontViewTwoState copyWith(
      {Iphone12Pro61MockupFrontViewTwoModel?
          iphone12Pro61MockupFrontViewTwoModelObj}) {
    return Iphone12Pro61MockupFrontViewTwoState(
      iphone12Pro61MockupFrontViewTwoModelObj:
          iphone12Pro61MockupFrontViewTwoModelObj ??
              this.iphone12Pro61MockupFrontViewTwoModelObj,
    );
  }
}
