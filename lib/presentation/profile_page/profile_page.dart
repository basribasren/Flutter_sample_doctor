import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 32.h,
                vertical: 25.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse51,
                    height: 130.adaptSize,
                    width: 130.adaptSize,
                    radius: BorderRadius.circular(
                      65.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 28.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "msg_chathura_sampath".tr,
                      style: CustomTextStyles.titleLargeBold,
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: _buildSpacer(
                      context,
                      paymentMethodLabel: "lbl_history".tr,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: _buildLocation(
                      context,
                      locationText: "msg_personal_detailes".tr,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: _buildLocation(
                      context,
                      locationText: "lbl_location".tr,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: _buildSpacer(
                      context,
                      paymentMethodLabel: "lbl_payment_method".tr,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: _buildSpacer(
                      context,
                      paymentMethodLabel: "lbl_settings".tr,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Padding(
                    padding: EdgeInsets.only(right: 13.h),
                    child: _buildLocation(
                      context,
                      locationText: "lbl_help".tr,
                    ),
                  ),
                  SizedBox(height: 29.v),
                  Row(
                    children: [
                      CustomIconButton(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame8,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 29.h,
                          top: 10.v,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "lbl_logout".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrameBlack90040x40,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_profile".tr,
      ),
    );
  }

  /// Common widget
  Widget _buildLocation(
    BuildContext context, {
    required String locationText,
  }) {
    return Row(
      children: [
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame4,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 29.h,
            top: 8.v,
            bottom: 6.v,
          ),
          child: Text(
            locationText,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgFrameBlack90040x40,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 8.v),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSpacer(
    BuildContext context, {
    required String paymentMethodLabel,
  }) {
    return Row(
      children: [
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame5,
          ),
        ),
        Spacer(
          flex: 21,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 4.v,
          ),
          child: Text(
            paymentMethodLabel,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Spacer(
          flex: 78,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFrameBlack90040x40,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 8.v),
        ),
      ],
    );
  }
}
