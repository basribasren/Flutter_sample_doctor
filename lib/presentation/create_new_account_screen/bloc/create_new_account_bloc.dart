import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application2/presentation/create_new_account_screen/models/create_new_account_model.dart';
part 'create_new_account_event.dart';
part 'create_new_account_state.dart';

/// A bloc that manages the state of a CreateNewAccount according to the event that is dispatched to it.
class CreateNewAccountBloc
    extends Bloc<CreateNewAccountEvent, CreateNewAccountState> {
  CreateNewAccountBloc(CreateNewAccountState initialState)
      : super(initialState) {
    on<CreateNewAccountInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<CreateNewAccountState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _onInitialize(
    CreateNewAccountInitialEvent event,
    Emitter<CreateNewAccountState> emit,
  ) async {
    emit(state.copyWith(
      fullNameController: TextEditingController(),
      passwordController: TextEditingController(),
      emailController: TextEditingController(),
      mobileNumberController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
