// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_one_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewOne in the application.
class Iphone12Pro61MockupFrontViewOneState extends Equatable {
  Iphone12Pro61MockupFrontViewOneState(
      {this.iphone12Pro61MockupFrontViewOneModelObj});

  Iphone12Pro61MockupFrontViewOneModel? iphone12Pro61MockupFrontViewOneModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewOneModelObj,
      ];
  Iphone12Pro61MockupFrontViewOneState copyWith(
      {Iphone12Pro61MockupFrontViewOneModel?
          iphone12Pro61MockupFrontViewOneModelObj}) {
    return Iphone12Pro61MockupFrontViewOneState(
      iphone12Pro61MockupFrontViewOneModelObj:
          iphone12Pro61MockupFrontViewOneModelObj ??
              this.iphone12Pro61MockupFrontViewOneModelObj,
    );
  }
}
