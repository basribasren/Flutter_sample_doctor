import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/message_two_screen/models/message_two_model.dart';
part 'message_two_event.dart';
part 'message_two_state.dart';

/// A bloc that manages the state of a MessageTwo according to the event that is dispatched to it.
class MessageTwoBloc extends Bloc<MessageTwoEvent, MessageTwoState> {
  MessageTwoBloc(MessageTwoState initialState) : super(initialState) {
    on<MessageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageTwoInitialEvent event,
    Emitter<MessageTwoState> emit,
  ) async {
    emit(state.copyWith(
      sentimentverysatisfiedEditTextController: TextEditingController(),
    ));
  }
}
