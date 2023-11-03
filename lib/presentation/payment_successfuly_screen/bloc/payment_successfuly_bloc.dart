import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/payment_successfuly_screen/models/payment_successfuly_model.dart';
part 'payment_successfuly_event.dart';
part 'payment_successfuly_state.dart';

/// A bloc that manages the state of a PaymentSuccessfuly according to the event that is dispatched to it.
class PaymentSuccessfulyBloc
    extends Bloc<PaymentSuccessfulyEvent, PaymentSuccessfulyState> {
  PaymentSuccessfulyBloc(PaymentSuccessfulyState initialState)
      : super(initialState) {
    on<PaymentSuccessfulyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentSuccessfulyInitialEvent event,
    Emitter<PaymentSuccessfulyState> emit,
  ) async {}
}
