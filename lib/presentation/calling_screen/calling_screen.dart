import 'bloc/calling_bloc.dart';
import 'models/calling_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CallingScreen extends StatelessWidget {
  const CallingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CallingBloc>(
      create: (context) => CallingBloc(CallingState(
        callingModelObj: CallingModel(),
      ))
        ..add(CallingInitialEvent()),
      child: CallingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<CallingBloc, CallingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, -0.09),
                  end: Alignment(0.5, 1.78),
                  colors: [
                    theme.colorScheme.primary,
                    theme.colorScheme.primary.withOpacity(0),
                  ],
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 103.v),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 29.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse47,
                      height: 150.adaptSize,
                      width: 150.adaptSize,
                      radius: BorderRadius.circular(
                        75.h,
                      ),
                    ),
                    SizedBox(height: 28.v),
                    Text(
                      "lbl_dr_upul".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 22.v),
                    Text(
                      "lbl_ringing".tr,
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(18.h),
                          decoration:
                              IconButtonStyleHelper.fillOnPrimaryContainerTL30,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrame2,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            decoration: IconButtonStyleHelper.fillOnPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame60x60,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            decoration: IconButtonStyleHelper
                                .fillOnPrimaryContainerTL30,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrameBlack90060x60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
