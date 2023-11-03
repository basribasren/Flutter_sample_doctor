// ignore_for_file: must_be_immutable

part of 'iphone_12_pro_6_1_mockup_front_view_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone12Pro61MockupFrontViewOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone12Pro61MockupFrontViewOneEvent extends Equatable {}

/// Event that is dispatched when the Iphone12Pro61MockupFrontViewOne widget is first created.
class Iphone12Pro61MockupFrontViewOneInitialEvent
    extends Iphone12Pro61MockupFrontViewOneEvent {
  @override
  List<Object?> get props => [];
}
