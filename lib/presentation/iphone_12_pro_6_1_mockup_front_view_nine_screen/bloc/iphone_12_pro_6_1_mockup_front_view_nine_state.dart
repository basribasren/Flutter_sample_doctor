// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_nine_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewNine in the application.
class Iphone12Pro61MockupFrontViewNineState extends Equatable {
  Iphone12Pro61MockupFrontViewNineState(
      {this.iphone12Pro61MockupFrontViewNineModelObj});

  Iphone12Pro61MockupFrontViewNineModel?
      iphone12Pro61MockupFrontViewNineModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewNineModelObj,
      ];
  Iphone12Pro61MockupFrontViewNineState copyWith(
      {Iphone12Pro61MockupFrontViewNineModel?
          iphone12Pro61MockupFrontViewNineModelObj}) {
    return Iphone12Pro61MockupFrontViewNineState(
      iphone12Pro61MockupFrontViewNineModelObj:
          iphone12Pro61MockupFrontViewNineModelObj ??
              this.iphone12Pro61MockupFrontViewNineModelObj,
    );
  }
}
