// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [payment_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentModel extends Equatable {
  PaymentModel() {}

  PaymentModel copyWith() {
    return PaymentModel();
  }

  @override
  List<Object?> get props => [];
}
