import '../models/usercalendar_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UsercalendarItemWidget extends StatelessWidget {
  UsercalendarItemWidget(
    this.usercalendarItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UsercalendarItemModel usercalendarItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameBlack90032x32,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 9.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                top: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        usercalendarItemModelObj.monthName!,
                        style: CustomTextStyles.titleLargeBold,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 6.v,
                        ),
                        child: Text(
                          usercalendarItemModelObj.timeInterval!,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    usercalendarItemModelObj.description!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
