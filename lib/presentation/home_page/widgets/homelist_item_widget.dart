import '../models/homelist_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomelistItemWidget extends StatelessWidget {
  HomelistItemWidget(
    this.homelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomelistItemModel homelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 147.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 147.h,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 26.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Text(
            homelistItemModelObj.group!,
            style: CustomTextStyles.titleLargeOnPrimaryContainer,
          ),
        ),
      ),
    );
  }
}
