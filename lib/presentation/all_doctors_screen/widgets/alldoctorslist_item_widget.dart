import '../models/alldoctorslist_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AlldoctorslistItemWidget extends StatelessWidget {
  AlldoctorslistItemWidget(
    this.alldoctorslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AlldoctorslistItemModel alldoctorslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: alldoctorslistItemModelObj?.drPawan,
            height: 153.v,
            width: 138.h,
            margin: EdgeInsets.only(top: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 24.v,
              bottom: 15.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 182.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        alldoctorslistItemModelObj.weburl!,
                        style: theme.textTheme.titleLarge,
                      ),
                      CustomImageView(
                        imagePath: alldoctorslistItemModelObj?.drPawan1,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 5.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  width: 178.h,
                  child: Text(
                    alldoctorslistItemModelObj.joremIpsumDolor!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 15.v),
                SizedBox(
                  width: 182.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomElevatedButton(
                        height: 28.v,
                        width: 79.h,
                        text: "lbl_book".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryTL14,
                        buttonTextStyle:
                            CustomTextStyles.bodyLargeOnPrimaryContainer_1,
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameOrange500,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          alldoctorslistItemModelObj.fifty!,
                          style: theme.textTheme.bodyLarge,
                        ),
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
}
