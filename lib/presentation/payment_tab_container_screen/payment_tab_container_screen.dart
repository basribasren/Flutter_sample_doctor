import 'bloc/payment_tab_container_bloc.dart';
import 'models/payment_tab_container_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/presentation/payment_page/payment_page.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PaymentTabContainerScreen extends StatefulWidget {
  const PaymentTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentTabContainerScreenState createState() =>
      PaymentTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentTabContainerBloc>(
      create: (context) => PaymentTabContainerBloc(PaymentTabContainerState(
        paymentTabContainerModelObj: PaymentTabContainerModel(),
      ))
        ..add(PaymentTabContainerInitialEvent()),
      child: PaymentTabContainerScreen(),
    );
  }
}

class PaymentTabContainerScreenState extends State<PaymentTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PaymentTabContainerBloc, PaymentTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 65.v),
                  Text(
                    "lbl_120_00".tr,
                    style: CustomTextStyles.displayMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 98.v),
                  Container(
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder30,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 40.h),
                            child: Text(
                              "msg_doctor_chanaling".tr,
                              style: CustomTextStyles.titleLargeBold_1,
                            ),
                          ),
                        ),
                        SizedBox(height: 29.v),
                        _buildTabview(context),
                        SizedBox(
                          height: 470.v,
                          child: TabBarView(
                            controller: tabviewController,
                            children: [
                              PaymentPage.builder(context),
                              PaymentPage.builder(context),
                            ],
                          ),
                        ),
                      ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 75.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFrameBlack90040x40,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_payment".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 348.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Averia Sans Libre',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Averia Sans Libre',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            15.h,
          ),
          border: Border.all(
            color: appTheme.black900,
            width: 3.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_card_payment".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_cash_payment".tr,
            ),
          ),
        ],
      ),
    );
  }
}
