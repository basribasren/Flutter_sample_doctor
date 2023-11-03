// ignore_for_file: must_be_immutable

part of 'all_doctors_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllDoctors widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllDoctorsEvent extends Equatable {}

/// Event that is dispatched when the AllDoctors widget is first created.
class AllDoctorsInitialEvent extends AllDoctorsEvent {
  @override
  List<Object?> get props => [];
}
