import 'bloc/create_new_account_bloc.dart';
import 'models/create_new_account_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/core/utils/validation_functions.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:basri_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CreateNewAccountScreen extends StatelessWidget {
  CreateNewAccountScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateNewAccountBloc>(
      create: (context) => CreateNewAccountBloc(CreateNewAccountState(
        createNewAccountModelObj: CreateNewAccountModel(),
      ))
        ..add(CreateNewAccountInitialEvent()),
      child: CreateNewAccountScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 26.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_create_new_account".tr,
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 29.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_full_name".tr,
                    style: CustomTextStyles.titleLarge22,
                  ),
                ),
                SizedBox(height: 13.v),
                _buildFullName(context),
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.titleLarge22,
                  ),
                ),
                SizedBox(height: 15.v),
                _buildPassword(context),
                SizedBox(height: 16.v),
                _buildComponentOne(context),
                SizedBox(height: 63.v),
                _buildSignUp(context),
                SizedBox(height: 26.v),
                Text(
                  "lbl_or".tr,
                  style: CustomTextStyles.titleLargeGray600Bold,
                ),
                SizedBox(height: 15.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder30,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFacebookLogoB,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      margin: EdgeInsets.only(left: 29.h),
                      padding: EdgeInsets.all(8.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder30,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGoogleLogoPng,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_don_t_have_an_account2".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      TextSpan(
                        text: "lbl_sign_in".tr,
                        style: CustomTextStyles.titleMediumBold,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return BlocSelector<CreateNewAccountBloc, CreateNewAccountState,
        TextEditingController?>(
      selector: (state) => state.fullNameController,
      builder: (context, fullNameController) {
        return CustomTextFormField(
          controller: fullNameController,
          hintText: "msg_enter_your_full".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocBuilder<CreateNewAccountBloc, CreateNewAccountState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.passwordController,
          hintText: "msg_enter_your_password".tr,
          textInputType: TextInputType.visiblePassword,
          suffix: InkWell(
            onTap: () {
              context.read<CreateNewAccountBloc>().add(
                  ChangePasswordVisibilityEvent(value: !state.isShowPassword));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(12.h, 18.v, 30.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgOutlineEyeclosed,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 60.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword,
          contentPadding: EdgeInsets.only(
            left: 26.h,
            top: 18.v,
            bottom: 18.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<CreateNewAccountBloc, CreateNewAccountState,
        TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_enter_your_email".tr,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return BlocSelector<CreateNewAccountBloc, CreateNewAccountState,
        TextEditingController?>(
      selector: (state) => state.mobileNumberController,
      builder: (context, mobileNumberController) {
        return CustomTextFormField(
          controller: mobileNumberController,
          hintText: "msg_enter_your_phone".tr,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.phone,
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildComponentOne(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            "lbl_email".tr,
            style: CustomTextStyles.titleLarge22,
          ),
        ),
        SizedBox(height: 14.v),
        _buildEmail(context),
        SizedBox(height: 24.v),
        Text(
          "lbl_mobile_number".tr,
          style: CustomTextStyles.titleLarge22,
        ),
        SizedBox(height: 13.v),
        _buildMobileNumber(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      text: "lbl_sign_up".tr,
    );
  }
}
