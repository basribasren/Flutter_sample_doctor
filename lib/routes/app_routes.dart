import 'package:flutter/material.dart';
import 'package:basri_s_application2/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:basri_s_application2/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:basri_s_application2/presentation/create_new_account_screen/create_new_account_screen.dart';
import 'package:basri_s_application2/presentation/home_container_screen/home_container_screen.dart';
import 'package:basri_s_application2/presentation/all_doctors_screen/all_doctors_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_six_screen/iphone_12_pro_6_1_mockup_front_view_six_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_twelve_screen/iphone_12_pro_6_1_mockup_front_view_twelve_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_eleven_screen/iphone_12_pro_6_1_mockup_front_view_eleven_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_one_screen/iphone_12_pro_6_1_mockup_front_view_one_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_five_screen/iphone_12_pro_6_1_mockup_front_view_five_screen.dart';
import 'package:basri_s_application2/presentation/appointment_detailes_screen/appointment_detailes_screen.dart';
import 'package:basri_s_application2/presentation/payment_tab_container_screen/payment_tab_container_screen.dart';
import 'package:basri_s_application2/presentation/payment_successfuly_screen/payment_successfuly_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_ten_screen/iphone_12_pro_6_1_mockup_front_view_ten_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_eight_screen/iphone_12_pro_6_1_mockup_front_view_eight_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_fourteen_screen/iphone_12_pro_6_1_mockup_front_view_fourteen_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_screen/iphone_12_pro_6_1_mockup_front_view_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_four_screen/iphone_12_pro_6_1_mockup_front_view_four_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_nine_screen/iphone_12_pro_6_1_mockup_front_view_nine_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_seven_screen/iphone_12_pro_6_1_mockup_front_view_seven_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_thirteen_screen/iphone_12_pro_6_1_mockup_front_view_thirteen_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_three_screen/iphone_12_pro_6_1_mockup_front_view_three_screen.dart';
import 'package:basri_s_application2/presentation/iphone_12_pro_6_1_mockup_front_view_two_screen/iphone_12_pro_6_1_mockup_front_view_two_screen.dart';
import 'package:basri_s_application2/presentation/message_two_screen/message_two_screen.dart';
import 'package:basri_s_application2/presentation/calling_screen/calling_screen.dart';
import 'package:basri_s_application2/presentation/video_calling_screen/video_calling_screen.dart';
import 'package:basri_s_application2/presentation/notification_screen/notification_screen.dart';
import 'package:basri_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String createNewAccountScreen = '/create_new_account_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String allDoctorsScreen = '/all_doctors_screen';

  static const String iphone12Pro61MockupFrontViewSixScreen =
      '/iphone_12_pro_6_1_mockup_front_view_six_screen';

  static const String iphone12Pro61MockupFrontViewTwelveScreen =
      '/iphone_12_pro_6_1_mockup_front_view_twelve_screen';

  static const String iphone12Pro61MockupFrontViewElevenScreen =
      '/iphone_12_pro_6_1_mockup_front_view_eleven_screen';

  static const String iphone12Pro61MockupFrontViewOneScreen =
      '/iphone_12_pro_6_1_mockup_front_view_one_screen';

  static const String iphone12Pro61MockupFrontViewFiveScreen =
      '/iphone_12_pro_6_1_mockup_front_view_five_screen';

  static const String appointmentDetailesScreen =
      '/appointment_detailes_screen';

  static const String selectDateAndTimePage = '/select_date_and_time_page';

  static const String paymentPage = '/payment_page';

  static const String paymentTabContainerScreen =
      '/payment_tab_container_screen';

  static const String paymentSuccessfulyScreen = '/payment_successfuly_screen';

  static const String iphone12Pro61MockupFrontViewTenScreen =
      '/iphone_12_pro_6_1_mockup_front_view_ten_screen';

  static const String iphone12Pro61MockupFrontViewEightScreen =
      '/iphone_12_pro_6_1_mockup_front_view_eight_screen';

  static const String iphone12Pro61MockupFrontViewFourteenScreen =
      '/iphone_12_pro_6_1_mockup_front_view_fourteen_screen';

  static const String iphone12Pro61MockupFrontViewScreen =
      '/iphone_12_pro_6_1_mockup_front_view_screen';

  static const String iphone12Pro61MockupFrontViewFourScreen =
      '/iphone_12_pro_6_1_mockup_front_view_four_screen';

  static const String iphone12Pro61MockupFrontViewNineScreen =
      '/iphone_12_pro_6_1_mockup_front_view_nine_screen';

  static const String iphone12Pro61MockupFrontViewSevenScreen =
      '/iphone_12_pro_6_1_mockup_front_view_seven_screen';

  static const String iphone12Pro61MockupFrontViewThirteenScreen =
      '/iphone_12_pro_6_1_mockup_front_view_thirteen_screen';

  static const String iphone12Pro61MockupFrontViewThreeScreen =
      '/iphone_12_pro_6_1_mockup_front_view_three_screen';

  static const String iphone12Pro61MockupFrontViewTwoScreen =
      '/iphone_12_pro_6_1_mockup_front_view_two_screen';

  static const String messageOnePage = '/message_one_page';

  static const String messageTwoScreen = '/message_two_screen';

  static const String callingScreen = '/calling_screen';

  static const String videoCallingScreen = '/video_calling_screen';

  static const String profilePage = '/profile_page';

  static const String notificationScreen = '/notification_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreen: OnboardingScreen.builder,
        signInScreen: SignInScreen.builder,
        createNewAccountScreen: CreateNewAccountScreen.builder,
        homeContainerScreen: HomeContainerScreen.builder,
        allDoctorsScreen: AllDoctorsScreen.builder,
        iphone12Pro61MockupFrontViewSixScreen:
            Iphone12Pro61MockupFrontViewSixScreen.builder,
        iphone12Pro61MockupFrontViewTwelveScreen:
            Iphone12Pro61MockupFrontViewTwelveScreen.builder,
        iphone12Pro61MockupFrontViewElevenScreen:
            Iphone12Pro61MockupFrontViewElevenScreen.builder,
        iphone12Pro61MockupFrontViewOneScreen:
            Iphone12Pro61MockupFrontViewOneScreen.builder,
        iphone12Pro61MockupFrontViewFiveScreen:
            Iphone12Pro61MockupFrontViewFiveScreen.builder,
        appointmentDetailesScreen: AppointmentDetailesScreen.builder,
        paymentTabContainerScreen: PaymentTabContainerScreen.builder,
        paymentSuccessfulyScreen: PaymentSuccessfulyScreen.builder,
        iphone12Pro61MockupFrontViewTenScreen:
            Iphone12Pro61MockupFrontViewTenScreen.builder,
        iphone12Pro61MockupFrontViewEightScreen:
            Iphone12Pro61MockupFrontViewEightScreen.builder,
        iphone12Pro61MockupFrontViewFourteenScreen:
            Iphone12Pro61MockupFrontViewFourteenScreen.builder,
        iphone12Pro61MockupFrontViewScreen:
            Iphone12Pro61MockupFrontViewScreen.builder,
        iphone12Pro61MockupFrontViewFourScreen:
            Iphone12Pro61MockupFrontViewFourScreen.builder,
        iphone12Pro61MockupFrontViewNineScreen:
            Iphone12Pro61MockupFrontViewNineScreen.builder,
        iphone12Pro61MockupFrontViewSevenScreen:
            Iphone12Pro61MockupFrontViewSevenScreen.builder,
        iphone12Pro61MockupFrontViewThirteenScreen:
            Iphone12Pro61MockupFrontViewThirteenScreen.builder,
        iphone12Pro61MockupFrontViewThreeScreen:
            Iphone12Pro61MockupFrontViewThreeScreen.builder,
        iphone12Pro61MockupFrontViewTwoScreen:
            Iphone12Pro61MockupFrontViewTwoScreen.builder,
        messageTwoScreen: MessageTwoScreen.builder,
        callingScreen: CallingScreen.builder,
        videoCallingScreen: VideoCallingScreen.builder,
        notificationScreen: NotificationScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingScreen.builder
      };
}
