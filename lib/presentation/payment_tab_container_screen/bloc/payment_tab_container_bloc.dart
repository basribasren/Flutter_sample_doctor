import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/payment_tab_container_screen/models/payment_tab_container_model.dart';
part 'payment_tab_container_event.dart';
part 'payment_tab_container_state.dart';

/// A bloc that manages the state of a PaymentTabContainer according to the event that is dispatched to it.
class PaymentTabContainerBloc
    extends Bloc<PaymentTabContainerEvent, PaymentTabContainerState> {
  PaymentTabContainerBloc(PaymentTabContainerState initialState)
      : super(initialState) {
    on<PaymentTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentTabContainerInitialEvent event,
    Emitter<PaymentTabContainerState> emit,
  ) async {}
}
