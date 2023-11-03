import '../models/appointmentdetails_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppointmentdetailsItemWidget extends StatelessWidget {
  AppointmentdetailsItemWidget(
    this.appointmentdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AppointmentdetailsItemModel appointmentdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 138.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 138.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 20.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_sun".tr,
                  style: CustomTextStyles.headlineSmallOnPrimaryContainer_1,
                ),
                TextSpan(
                  text: "lbl_4".tr,
                  style: CustomTextStyles.headlineMediumOnPrimaryContainer,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
