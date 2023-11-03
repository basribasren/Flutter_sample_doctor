// ignore_for_file: must_be_immutable

part of 'create_new_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateNewAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateNewAccountEvent extends Equatable {}

/// Event that is dispatched when the CreateNewAccount widget is first created.
class CreateNewAccountInitialEvent extends CreateNewAccountEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CreateNewAccountEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
