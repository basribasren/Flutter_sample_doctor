import 'bloc/sign_in_bloc.dart';
import 'models/sign_in_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/core/utils/validation_functions.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:basri_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => SignInBloc(SignInState(
        signInModelObj: SignInModel(),
      ))
        ..add(SignInInitialEvent()),
      child: SignInScreen(),
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
            padding: EdgeInsets.all(26.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_welcome".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
                SizedBox(height: 37.v),
                Text(
                  "lbl_sign_in".tr,
                  style: CustomTextStyles.headlineMediumBlack900_1,
                ),
                SizedBox(height: 16.v),
                Container(
                  width: 304.h,
                  margin: EdgeInsets.only(right: 72.h),
                  child: Text(
                    "msg_korem_ipsum_dolor".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLarge18,
                  ),
                ),
                SizedBox(height: 52.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "lbl_email".tr,
                    style: CustomTextStyles.titleLarge22,
                  ),
                ),
                SizedBox(height: 14.v),
                BlocSelector<SignInBloc, SignInState, TextEditingController?>(
                  selector: (state) => state.emailController,
                  builder: (context, emailController) {
                    return CustomTextFormField(
                      controller: emailController,
                      hintText: "msg_enter_your_email".tr,
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_email".tr;
                        }
                        return null;
                      },
                    );
                  },
                ),
                SizedBox(height: 23.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "lbl_password".tr,
                    style: CustomTextStyles.titleLarge22,
                  ),
                ),
                SizedBox(height: 14.v),
                BlocBuilder<SignInBloc, SignInState>(
                  builder: (context, state) {
                    return CustomTextFormField(
                      controller: state.passwordController,
                      hintText: "msg_enter_your_password".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          context.read<SignInBloc>().add(
                              ChangePasswordVisibilityEvent(
                                  value: !state.isShowPassword));
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(12.h, 18.v, 28.h, 18.v),
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
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: state.isShowPassword,
                      contentPadding: EdgeInsets.only(
                        left: 27.h,
                        top: 18.v,
                        bottom: 18.v,
                      ),
                    );
                  },
                ),
                SizedBox(height: 16.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "lbl_forget_password".tr,
                    style: CustomTextStyles.bodyLarge18,
                  ),
                ),
                SizedBox(height: 69.v),
                CustomElevatedButton(
                  height: 60.v,
                  text: "lbl_sign_in".tr,
                ),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_or".tr,
                    style: CustomTextStyles.titleLargeGray600Bold,
                  ),
                ),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.center,
                  child: Row(
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
                ),
                SizedBox(height: 39.v),
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_don_t_have_an_account2".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        TextSpan(
                          text: "lbl_sign_up".tr,
                          style: CustomTextStyles.titleMediumBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
