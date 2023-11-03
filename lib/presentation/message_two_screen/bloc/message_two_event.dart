// ignore_for_file: must_be_immutable

part of 'message_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessageTwoEvent extends Equatable {}

/// Event that is dispatched when the MessageTwo widget is first created.
class MessageTwoInitialEvent extends MessageTwoEvent {
  @override
  List<Object?> get props => [];
}
