// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_thirteen_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewThirteen in the application.
class Iphone12Pro61MockupFrontViewThirteenState extends Equatable {
  Iphone12Pro61MockupFrontViewThirteenState(
      {this.iphone12Pro61MockupFrontViewThirteenModelObj});

  Iphone12Pro61MockupFrontViewThirteenModel?
      iphone12Pro61MockupFrontViewThirteenModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewThirteenModelObj,
      ];
  Iphone12Pro61MockupFrontViewThirteenState copyWith(
      {Iphone12Pro61MockupFrontViewThirteenModel?
          iphone12Pro61MockupFrontViewThirteenModelObj}) {
    return Iphone12Pro61MockupFrontViewThirteenState(
      iphone12Pro61MockupFrontViewThirteenModelObj:
          iphone12Pro61MockupFrontViewThirteenModelObj ??
              this.iphone12Pro61MockupFrontViewThirteenModelObj,
    );
  }
}
