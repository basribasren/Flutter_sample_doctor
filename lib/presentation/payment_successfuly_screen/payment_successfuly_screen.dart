import 'bloc/payment_successfuly_bloc.dart';
import 'models/payment_successfuly_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccessfulyScreen extends StatelessWidget {
  const PaymentSuccessfulyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentSuccessfulyBloc>(
      create: (context) => PaymentSuccessfulyBloc(PaymentSuccessfulyState(
        paymentSuccessfulyModelObj: PaymentSuccessfulyModel(),
      ))
        ..add(PaymentSuccessfulyInitialEvent()),
      child: PaymentSuccessfulyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PaymentSuccessfulyBloc, PaymentSuccessfulyState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 63.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 42,
                  ),
                  Container(
                    height: 200.adaptSize,
                    width: 200.adaptSize,
                    padding: EdgeInsets.symmetric(horizontal: 53.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder100,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 60.v,
                      width: 84.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 51.v),
                  Text(
                    "lbl_congratulations".tr,
                    style: theme.textTheme.displayMedium,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "msg_your_payment_is".tr,
                    style: CustomTextStyles.titleLargeBold_1,
                  ),
                  Spacer(
                    flex: 57,
                  ),
                  CustomElevatedButton(
                    height: 60.v,
                    text: "lbl_back".tr,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
