import '../appointment_detailes_screen/widgets/am_item_widget.dart';
import '../appointment_detailes_screen/widgets/appointmentdetails_item_widget.dart';
import 'bloc/appointment_detailes_bloc.dart';
import 'models/am_item_model.dart';
import 'models/appointment_detailes_model.dart';
import 'models/appointmentdetails_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:basri_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AppointmentDetailesScreen extends StatelessWidget {
  const AppointmentDetailesScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppointmentDetailesBloc>(
      create: (context) => AppointmentDetailesBloc(AppointmentDetailesState(
        appointmentDetailesModelObj: AppointmentDetailesModel(),
      ))
        ..add(AppointmentDetailesInitialEvent()),
      child: AppointmentDetailesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 37.v),
          child: Column(
            children: [
              _buildDetails(context),
              SizedBox(height: 10.v),
              Container(
                width: 366.h,
                margin: EdgeInsets.only(
                  left: 26.h,
                  right: 37.h,
                ),
                child: Text(
                  "msg_worem_ipsum_dolor".tr,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 26.h,
                  right: 23.h,
                ),
                child: _buildDate(
                  context,
                  dateText: "lbl_working_hours".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 17.v),
              _buildTimeSlots(context),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 26.h,
                  right: 23.h,
                ),
                child: _buildDate(
                  context,
                  dateText: "lbl_date".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 20.v),
              _buildAppointmentDetails(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBookAppointment(context),
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
        text: "lbl_appointment".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 19.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle35,
                height: 138.adaptSize,
                width: 138.adaptSize,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
              SizedBox(height: 42.v),
              Text(
                "lbl_detailes".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 11.v,
              bottom: 59.v,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        "lbl_dr_upul".tr,
                        style: CustomTextStyles.headlineSmallBold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        bottom: 2.v,
                      ),
                      child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.fillBlueGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrameBlack90030x30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        bottom: 2.v,
                      ),
                      child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.fillBlueGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame30x30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        bottom: 2.v,
                      ),
                      child: CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(6.h),
                        decoration: IconButtonStyleHelper.fillBlueGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFrame2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_denteeth".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 7.v),
                SizedBox(
                  width: 218.h,
                  child: Text(
                    "msg_torem_ipsum_dolor".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMedium13,
                  ),
                ),
                SizedBox(height: 9.v),
                Container(
                  width: 217.h,
                  margin: EdgeInsets.only(right: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "lbl_payment".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Text(
                        "lbl_120_00".tr,
                        style: CustomTextStyles.titleLarge_1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeSlots(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 26.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocSelector<AppointmentDetailesBloc, AppointmentDetailesState,
                  AppointmentDetailesModel?>(
                selector: (state) => state.appointmentDetailesModelObj,
                builder: (context, appointmentDetailesModelObj) {
                  return Wrap(
                    runSpacing: 16.73.v,
                    spacing: 16.73.h,
                    children: List<Widget>.generate(
                      appointmentDetailesModelObj?.amItemList.length ?? 0,
                      (index) {
                        AmItemModel model =
                            appointmentDetailesModelObj?.amItemList[index] ??
                                AmItemModel();

                        return AmItemWidget(
                          model,
                          onSelectedChipView: (value) {
                            context.read<AppointmentDetailesBloc>().add(
                                UpdateChipViewEvent(
                                    index: index, isSelected: value));
                          },
                        );
                      },
                    ),
                  );
                },
              ),
              CustomElevatedButton(
                height: 56.v,
                width: 138.h,
                text: "lbl_12_00_pm".tr,
                margin: EdgeInsets.only(left: 16.h),
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: theme.textTheme.titleLarge!,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppointmentDetails(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 74.v,
        child: BlocSelector<AppointmentDetailesBloc, AppointmentDetailesState,
            AppointmentDetailesModel?>(
          selector: (state) => state.appointmentDetailesModelObj,
          builder: (context, appointmentDetailesModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 26.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: appointmentDetailesModelObj
                      ?.appointmentdetailsItemList.length ??
                  0,
              itemBuilder: (context, index) {
                AppointmentdetailsItemModel model = appointmentDetailesModelObj
                        ?.appointmentdetailsItemList[index] ??
                    AppointmentdetailsItemModel();
                return AppointmentdetailsItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookAppointment(BuildContext context) {
    return CustomElevatedButton(
      height: 60.v,
      text: "msg_book_an_appointment".tr,
      margin: EdgeInsets.only(
        left: 26.h,
        right: 26.h,
        bottom: 39.v,
      ),
    );
  }

  /// Common widget
  Widget _buildDate(
    BuildContext context, {
    required String dateText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dateText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: Text(
            seeAllText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
