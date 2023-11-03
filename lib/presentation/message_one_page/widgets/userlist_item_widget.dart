import '../models/userlist_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserlistItemWidget extends StatelessWidget {
  UserlistItemWidget(
    this.userlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserlistItemModel userlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 60.adaptSize,
          width: 60.adaptSize,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: userlistItemModelObj?.circleImage,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(top: 5.v),
                  decoration: BoxDecoration(
                    color: appTheme.greenA700,
                    borderRadius: BorderRadius.circular(
                      7.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
