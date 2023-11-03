// ignore_for_file: must_be_immutable

part of 'payment_successfuly_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentSuccessfuly widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentSuccessfulyEvent extends Equatable {}

/// Event that is dispatched when the PaymentSuccessfuly widget is first created.
class PaymentSuccessfulyInitialEvent extends PaymentSuccessfulyEvent {
  @override
  List<Object?> get props => [];
}
