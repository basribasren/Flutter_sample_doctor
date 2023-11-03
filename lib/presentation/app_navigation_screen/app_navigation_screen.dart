import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              signInText: "Onboarding".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.onboardingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Sign in".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Create new account".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.createNewAccountScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Home - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "All Doctors".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.allDoctorsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Six"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Twelve"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Eleven"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View One"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Five"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Appointment detailes".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.appointmentDetailesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Payment  - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Payment successfuly".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentSuccessfulyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Ten"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Eight"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Fourteen"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewFourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone12Pro61MockupFrontViewScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Four"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Nine"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Seven"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Thirteen"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Three"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText:
                                  "iPhone 12 Pro 6.1\\\" Mockup Front View Two"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone12Pro61MockupFrontViewTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Message Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.messageTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Calling".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.callingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Video Calling".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.videoCallingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              signInText: "Notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String signInText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  signInText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
