import '../models/userprofileinfo_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileinfoItemWidget extends StatelessWidget {
  UserprofileinfoItemWidget(
    this.userprofileinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileinfoItemModel userprofileinfoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 11.v),
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: userprofileinfoItemModelObj?.userImage,
              height: 70.adaptSize,
              width: 70.adaptSize,
              radius: BorderRadius.circular(
                35.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10.v),
              child: Column(
                children: [
                  SizedBox(
                    width: 244.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 11.v),
                          child: Text(
                            userprofileinfoItemModelObj.userName!,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 21.v),
                          child: Text(
                            userprofileinfoItemModelObj.userBalance!,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 4.v),
                        child: Text(
                          userprofileinfoItemModelObj.userDescription!,
                          style: CustomTextStyles.bodySmallPrimary,
                        ),
                      ),
                      Container(
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 52.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Text(
                          userprofileinfoItemModelObj.ninetyFive!,
                          style: CustomTextStyles.bodySmallOnPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
