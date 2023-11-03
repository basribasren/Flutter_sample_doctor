// ignore_for_file: must_be_immutable

part of 'video_calling_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VideoCalling widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VideoCallingEvent extends Equatable {}

/// Event that is dispatched when the VideoCalling widget is first created.
class VideoCallingInitialEvent extends VideoCallingEvent {
  @override
  List<Object?> get props => [];
}
