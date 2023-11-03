// ignore_for_file: must_be_immutable

part of 'payment_tab_container_bloc.dart';

/// Represents the state of PaymentTabContainer in the application.
class PaymentTabContainerState extends Equatable {
  PaymentTabContainerState({this.paymentTabContainerModelObj});

  PaymentTabContainerModel? paymentTabContainerModelObj;

  @override
  List<Object?> get props => [
        paymentTabContainerModelObj,
      ];
  PaymentTabContainerState copyWith(
      {PaymentTabContainerModel? paymentTabContainerModelObj}) {
    return PaymentTabContainerState(
      paymentTabContainerModelObj:
          paymentTabContainerModelObj ?? this.paymentTabContainerModelObj,
    );
  }
}
