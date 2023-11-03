import '../notification_screen/widgets/usercalendar_item_widget.dart';
import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'models/usercalendar_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
      create: (context) => NotificationBloc(NotificationState(
        notificationModelObj: NotificationModel(),
      ))
        ..add(NotificationInitialEvent()),
      child: NotificationScreen(),
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
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 27.v,
          ),
          child: Column(
            children: [
              _buildNewRow(context),
              SizedBox(height: 39.v),
              _buildUserCalendar(context),
              SizedBox(height: 53.v),
              Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.titleLargeBold,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
        text: "lbl_notification".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildNewRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_new".tr,
          style: theme.textTheme.headlineSmall,
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: Text(
            "lbl_mark_all".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserCalendar(BuildContext context) {
    return BlocSelector<NotificationBloc, NotificationState,
        NotificationModel?>(
      selector: (state) => state.notificationModelObj,
      builder: (context, notificationModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 31.v,
            );
          },
          itemCount: notificationModelObj?.usercalendarItemList.length ?? 0,
          itemBuilder: (context, index) {
            UsercalendarItemModel model =
                notificationModelObj?.usercalendarItemList[index] ??
                    UsercalendarItemModel();
            return UsercalendarItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
