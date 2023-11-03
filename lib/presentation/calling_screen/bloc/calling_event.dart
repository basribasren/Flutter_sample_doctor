// ignore_for_file: must_be_immutable

part of 'calling_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Calling widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CallingEvent extends Equatable {}

/// Event that is dispatched when the Calling widget is first created.
class CallingInitialEvent extends CallingEvent {
  @override
  List<Object?> get props => [];
}
