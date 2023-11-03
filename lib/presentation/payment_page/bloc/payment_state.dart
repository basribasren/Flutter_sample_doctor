// ignore_for_file: must_be_immutable

part of 'payment_bloc.dart';

/// Represents the state of Payment in the application.
class PaymentState extends Equatable {
  PaymentState({
    this.cardNumberEditTextController,
    this.cvvEditTextController,
    this.nameController,
    this.paymentModelObj,
  });

  TextEditingController? cardNumberEditTextController;

  TextEditingController? cvvEditTextController;

  TextEditingController? nameController;

  PaymentModel? paymentModelObj;

  @override
  List<Object?> get props => [
        cardNumberEditTextController,
        cvvEditTextController,
        nameController,
        paymentModelObj,
      ];
  PaymentState copyWith({
    TextEditingController? cardNumberEditTextController,
    TextEditingController? cvvEditTextController,
    TextEditingController? nameController,
    PaymentModel? paymentModelObj,
  }) {
    return PaymentState(
      cardNumberEditTextController:
          cardNumberEditTextController ?? this.cardNumberEditTextController,
      cvvEditTextController:
          cvvEditTextController ?? this.cvvEditTextController,
      nameController: nameController ?? this.nameController,
      paymentModelObj: paymentModelObj ?? this.paymentModelObj,
    );
  }
}
