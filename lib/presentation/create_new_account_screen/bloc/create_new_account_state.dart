// ignore_for_file: must_be_immutable

part of 'create_new_account_bloc.dart';

/// Represents the state of CreateNewAccount in the application.
class CreateNewAccountState extends Equatable {
  CreateNewAccountState({
    this.fullNameController,
    this.passwordController,
    this.emailController,
    this.mobileNumberController,
    this.isShowPassword = true,
    this.createNewAccountModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? passwordController;

  TextEditingController? emailController;

  TextEditingController? mobileNumberController;

  CreateNewAccountModel? createNewAccountModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        fullNameController,
        passwordController,
        emailController,
        mobileNumberController,
        isShowPassword,
        createNewAccountModelObj,
      ];
  CreateNewAccountState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? passwordController,
    TextEditingController? emailController,
    TextEditingController? mobileNumberController,
    bool? isShowPassword,
    CreateNewAccountModel? createNewAccountModelObj,
  }) {
    return CreateNewAccountState(
      fullNameController: fullNameController ?? this.fullNameController,
      passwordController: passwordController ?? this.passwordController,
      emailController: emailController ?? this.emailController,
      mobileNumberController:
          mobileNumberController ?? this.mobileNumberController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      createNewAccountModelObj:
          createNewAccountModelObj ?? this.createNewAccountModelObj,
    );
  }
}
