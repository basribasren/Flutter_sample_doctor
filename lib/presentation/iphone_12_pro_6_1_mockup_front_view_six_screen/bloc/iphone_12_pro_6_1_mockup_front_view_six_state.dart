// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_six_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewSix in the application.
class Iphone12Pro61MockupFrontViewSixState extends Equatable {
  Iphone12Pro61MockupFrontViewSixState(
      {this.iphone12Pro61MockupFrontViewSixModelObj});

  Iphone12Pro61MockupFrontViewSixModel? iphone12Pro61MockupFrontViewSixModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewSixModelObj,
      ];
  Iphone12Pro61MockupFrontViewSixState copyWith(
      {Iphone12Pro61MockupFrontViewSixModel?
          iphone12Pro61MockupFrontViewSixModelObj}) {
    return Iphone12Pro61MockupFrontViewSixState(
      iphone12Pro61MockupFrontViewSixModelObj:
          iphone12Pro61MockupFrontViewSixModelObj ??
              this.iphone12Pro61MockupFrontViewSixModelObj,
    );
  }
}
