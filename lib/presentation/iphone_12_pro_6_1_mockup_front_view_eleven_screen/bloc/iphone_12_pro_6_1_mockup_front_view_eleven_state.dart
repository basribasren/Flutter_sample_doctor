// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_eleven_bloc.dart';

/// Represents the state of Iphone12Pro61MockupFrontViewEleven in the application.
class Iphone12Pro61MockupFrontViewElevenState extends Equatable {
  Iphone12Pro61MockupFrontViewElevenState(
      {this.iphone12Pro61MockupFrontViewElevenModelObj});

  Iphone12Pro61MockupFrontViewElevenModel?
      iphone12Pro61MockupFrontViewElevenModelObj;

  @override
  List<Object?> get props => [
        iphone12Pro61MockupFrontViewElevenModelObj,
      ];
  Iphone12Pro61MockupFrontViewElevenState copyWith(
      {Iphone12Pro61MockupFrontViewElevenModel?
          iphone12Pro61MockupFrontViewElevenModelObj}) {
    return Iphone12Pro61MockupFrontViewElevenState(
      iphone12Pro61MockupFrontViewElevenModelObj:
          iphone12Pro61MockupFrontViewElevenModelObj ??
              this.iphone12Pro61MockupFrontViewElevenModelObj,
    );
  }
}
