import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(
            OnboardingState(onboardingModelObj: OnboardingModel()))
          ..add(OnboardingInitialEvent()),
        child: OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 177.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIstockphoto130,
                        height: 288.v,
                        width: 430.h),
                    SizedBox(height: 44.v),
                    SizedBox(
                        width: 261.h,
                        child: Text("msg_d_o_c_t_o_r_c_h".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.headlineLargePrimary)),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }
}
