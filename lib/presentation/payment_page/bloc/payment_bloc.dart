import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/payment_page/models/payment_model.dart';
part 'payment_event.dart';
part 'payment_state.dart';

/// A bloc that manages the state of a Payment according to the event that is dispatched to it.
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc(PaymentState initialState) : super(initialState) {
    on<PaymentInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentInitialEvent event,
    Emitter<PaymentState> emit,
  ) async {
    emit(state.copyWith(
      cardNumberEditTextController: TextEditingController(),
      cvvEditTextController: TextEditingController(),
      nameController: TextEditingController(),
    ));
  }
}
