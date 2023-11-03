import 'bloc/payment_bloc.dart';
import 'models/payment_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:basri_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentPageState createState() => PaymentPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentBloc>(
      create: (context) => PaymentBloc(PaymentState(
        paymentModelObj: PaymentModel(),
      ))
        ..add(PaymentInitialEvent()),
      child: PaymentPage(),
    );
  }
}

class PaymentPageState extends State<PaymentPage>
    with AutomaticKeepAliveClientMixin<PaymentPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              _buildCardNumberColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumberEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: BlocSelector<PaymentBloc, PaymentState, TextEditingController?>(
        selector: (state) => state.cardNumberEditTextController,
        builder: (context, cardNumberEditTextController) {
          return CustomTextFormField(
            controller: cardNumberEditTextController,
            hintText: "msg_1234_8896_1145_0896".tr,
            alignment: Alignment.center,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 15.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCvvEditText(BuildContext context) {
    return BlocSelector<PaymentBloc, PaymentState, TextEditingController?>(
      selector: (state) => state.cvvEditTextController,
      builder: (context, cvvEditTextController) {
        return CustomTextFormField(
          width: 149.h,
          controller: cvvEditTextController,
          hintText: "lbl_204".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 15.v,
          ),
          borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      child: BlocSelector<PaymentBloc, PaymentState, TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "msg_ravishka_sathsara".tr,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 15.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPayNowButton(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      text: "lbl_pay_now".tr,
    );
  }

  /// Section Widget
  Widget _buildCardNumberColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "lbl_card_number".tr,
              style: CustomTextStyles.bodyLarge18_1,
            ),
          ),
          SizedBox(height: 14.v),
          _buildCardNumberEditText(context),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "lbl_expiry_date".tr,
                    style: CustomTextStyles.bodyLarge18_1,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 108.h),
                  child: Text(
                    "lbl_cvv".tr,
                    style: CustomTextStyles.bodyLarge18_1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 185.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Text(
                      "lbl_10_02_2022".tr,
                      style: CustomTextStyles.bodyLarge_1,
                    ),
                  ),
                  _buildCvvEditText(context),
                ],
              ),
            ),
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Text(
              "lbl_name".tr,
              style: CustomTextStyles.bodyLarge18_1,
            ),
          ),
          SizedBox(height: 14.v),
          _buildName(context),
          SizedBox(height: 43.v),
          _buildPayNowButton(context),
        ],
      ),
    );
  }
}
