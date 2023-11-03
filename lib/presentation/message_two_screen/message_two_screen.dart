import 'bloc/message_two_bloc.dart';
import 'models/message_two_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/presentation/home_page/home_page.dart';
import 'package:basri_s_application2/presentation/message_one_page/message_one_page.dart';
import 'package:basri_s_application2/presentation/profile_page/profile_page.dart';
import 'package:basri_s_application2/presentation/select_date_and_time_page/select_date_and_time_page.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application2/widgets/custom_bottom_bar.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:basri_s_application2/widgets/custom_icon_button.dart';
import 'package:basri_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class MessageTwoScreen extends StatelessWidget {
  MessageTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MessageTwoBloc>(
      create: (context) => MessageTwoBloc(MessageTwoState(
        messageTwoModelObj: MessageTwoModel(),
      ))
        ..add(MessageTwoInitialEvent()),
      child: MessageTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 37.v),
              _buildRoremIpsumDolorSitButton1(context),
              SizedBox(height: 29.v),
              _buildRoremIpsumDolorSitButton2(context),
              SizedBox(height: 29.v),
              _buildRoremIpsumDolorSitButton3(context),
              SizedBox(height: 28.v),
              _buildRoremIpsumDolorSitButton4(context),
              SizedBox(height: 28.v),
              _buildRoremAdipiscingElitButton(context),
              SizedBox(height: 29.v),
              _buildRoremIpsumDolorSitButton5(context),
              SizedBox(height: 29.v),
              _buildRoremIpsumDolorSitButton6(context),
              SizedBox(height: 28.v),
              _buildRoremIpsumDolorSitRow(context),
              SizedBox(height: 10.v),
              _buildSentimentverysatisfiedRow(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
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
        text: "lbl_dr_upul".tr,
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFrame30x30,
          margin: EdgeInsets.only(
            left: 39.h,
            top: 13.v,
            right: 13.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFrame2,
          margin: EdgeInsets.only(
            left: 15.h,
            top: 13.v,
            right: 52.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRoremIpsumDolorSitButton1(BuildContext context) {
    return CustomElevatedButton(
      width: 263.h,
      text: "msg_rorem_ipsum_dolor".tr,
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.bodyMedium14,
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildRoremIpsumDolorSitButton2(BuildContext context) {
    return CustomElevatedButton(
      width: 263.h,
      text: "msg_rorem_ipsum_dolor".tr,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildRoremIpsumDolorSitButton3(BuildContext context) {
    return CustomElevatedButton(
      width: 263.h,
      text: "msg_rorem_ipsum_dolor".tr,
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.bodyMedium14,
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildRoremIpsumDolorSitButton4(BuildContext context) {
    return CustomElevatedButton(
      width: 263.h,
      text: "msg_rorem_ipsum_dolor".tr,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildRoremAdipiscingElitButton(BuildContext context) {
    return CustomElevatedButton(
      width: 182.h,
      text: "msg_rorem_adipiscing".tr,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildRoremIpsumDolorSitButton5(BuildContext context) {
    return CustomElevatedButton(
      width: 263.h,
      text: "msg_rorem_ipsum_dolor".tr,
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.bodyMedium14,
      alignment: Alignment.centerLeft,
    );
  }

  /// Section Widget
  Widget _buildRoremIpsumDolorSitButton6(BuildContext context) {
    return CustomElevatedButton(
      width: 263.h,
      text: "msg_rorem_ipsum_dolor".tr,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildRoremIpsumDolorSitButton7(BuildContext context) {
    return CustomElevatedButton(
      width: 263.h,
      text: "msg_rorem_ipsum_dolor".tr,
      margin: EdgeInsets.only(bottom: 18.v),
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.bodyMedium14,
    );
  }

  /// Section Widget
  Widget _buildRoremIpsumDolorSitRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRoremIpsumDolorSitButton7(context),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameOnprimarycontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSentimentverysatisfiedEditText(BuildContext context) {
    return Expanded(
      child:
          BlocSelector<MessageTwoBloc, MessageTwoState, TextEditingController?>(
        selector: (state) => state.sentimentverysatisfiedEditTextController,
        builder: (context, sentimentverysatisfiedEditTextController) {
          return CustomTextFormField(
            controller: sentimentverysatisfiedEditTextController,
            hintText: "lbl_write_here".tr,
            hintStyle: CustomTextStyles.bodyLargeGray600_1,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(17.h, 18.v, 18.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgSentimentVerySatisfied,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 60.v,
            ),
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 18.v, 15.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameGray60024x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 60.v,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 20.v),
            borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL10,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSentimentverysatisfiedRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildSentimentverysatisfiedEditText(context),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: CustomIconButton(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(18.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameOnprimarycontainer60x60,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Frameblack900:
        return AppRoutes.homePage;
      case BottomBarEnum.Frameblack90024x24:
        return AppRoutes.selectDateAndTimePage;
      case BottomBarEnum.Frame24x24:
        return AppRoutes.messageOnePage;
      case BottomBarEnum.Frame1:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.selectDateAndTimePage:
        return SelectDateAndTimePage.builder(context);
      case AppRoutes.messageOnePage:
        return MessageOnePage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
