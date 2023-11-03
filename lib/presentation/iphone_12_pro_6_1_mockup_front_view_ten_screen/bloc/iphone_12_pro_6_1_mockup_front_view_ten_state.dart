// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_ten_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewTen in the application.
class Iphone12Pro61MockupFrontViewTenState extends Equatable {
  Iphone12Pro61MockupFrontViewTenState(
      {this.iphone12Pro61MockupFrontViewTenModelObj});

  Iphone12Pro61MockupFrontViewTenModel? iphone12Pro61MockupFrontViewTenModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewTenModelObj,
      ];
  Iphone12Pro61MockupFrontViewTenState copyWith(
      {Iphone12Pro61MockupFrontViewTenModel?
          iphone12Pro61MockupFrontViewTenModelObj}) {
    return Iphone12Pro61MockupFrontViewTenState(
      iphone12Pro61MockupFrontViewTenModelObj:
          iphone12Pro61MockupFrontViewTenModelObj ??
              this.iphone12Pro61MockupFrontViewTenModelObj,
    );
  }
}
