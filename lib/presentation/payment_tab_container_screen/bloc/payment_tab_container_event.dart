// ignore_for_file: must_be_immutable

part of 'payment_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PaymentTabContainer widget is first created.
class PaymentTabContainerInitialEvent extends PaymentTabContainerEvent {
  @override
  List<Object?> get props => [];
}
