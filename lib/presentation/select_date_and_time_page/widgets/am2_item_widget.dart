import '../models/am2_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Am2ItemWidget extends StatelessWidget {
  Am2ItemWidget(
    this.am2ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Am2ItemModel am2ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 15.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        am2ItemModelObj.am!,
        style: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Averia Sans Libre',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (am2ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray100.withOpacity(0.3),
      selectedColor: theme.colorScheme.primary,
      shape: (am2ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
