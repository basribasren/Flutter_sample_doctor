// ignore_for_file: must_be_immutable

part of 'message_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessageOneEvent extends Equatable {}

/// Event that is dispatched when the MessageOne widget is first created.
class MessageOneInitialEvent extends MessageOneEvent {
  @override
  List<Object?> get props => [];
}
