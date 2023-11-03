// ignore_for_file: must_be_immutable

part of 'payment_successfuly_bloc.dart';

/// Represents the state of PaymentSuccessfuly in the application.
class PaymentSuccessfulyState extends Equatable {
  PaymentSuccessfulyState({this.paymentSuccessfulyModelObj});

  PaymentSuccessfulyModel? paymentSuccessfulyModelObj;

  @override
  List<Object?> get props => [
        paymentSuccessfulyModelObj,
      ];
  PaymentSuccessfulyState copyWith(
      {PaymentSuccessfulyModel? paymentSuccessfulyModelObj}) {
    return PaymentSuccessfulyState(
      paymentSuccessfulyModelObj:
          paymentSuccessfulyModelObj ?? this.paymentSuccessfulyModelObj,
    );
  }
}
