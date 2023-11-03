// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_twelve_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewTwelve in the application.
class Iphone12Pro61MockupFrontViewTwelveState extends Equatable {
  Iphone12Pro61MockupFrontViewTwelveState(
      {this.iphone12Pro61MockupFrontViewTwelveModelObj});

  Iphone12Pro61MockupFrontViewTwelveModel?
      iphone12Pro61MockupFrontViewTwelveModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewTwelveModelObj,
      ];
  Iphone12Pro61MockupFrontViewTwelveState copyWith(
      {Iphone12Pro61MockupFrontViewTwelveModel?
          iphone12Pro61MockupFrontViewTwelveModelObj}) {
    return Iphone12Pro61MockupFrontViewTwelveState(
      iphone12Pro61MockupFrontViewTwelveModelObj:
          iphone12Pro61MockupFrontViewTwelveModelObj ??
              this.iphone12Pro61MockupFrontViewTwelveModelObj,
    );
  }
}
