// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontView in the application.
class Iphone12Pro61MockupFrontViewState extends Equatable {
  Iphone12Pro61MockupFrontViewState(
      {this.iphone12Pro61MockupFrontViewModelObj});

  Iphone12Pro61MockupFrontViewModel? iphone12Pro61MockupFrontViewModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewModelObj,
      ];
  Iphone12Pro61MockupFrontViewState copyWith(
      {Iphone12Pro61MockupFrontViewModel?
          iphone12Pro61MockupFrontViewModelObj}) {
    return Iphone12Pro61MockupFrontViewState(
      iphone12Pro61MockupFrontViewModelObj:
          iphone12Pro61MockupFrontViewModelObj ??
              this.iphone12Pro61MockupFrontViewModelObj,
    );
  }
}
