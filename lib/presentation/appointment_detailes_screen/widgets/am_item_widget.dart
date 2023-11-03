import '../models/am_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmItemWidget extends StatelessWidget {
  AmItemWidget(
    this.amItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  AmItemModel amItemModelObj;

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
        amItemModelObj.am!,
        style: TextStyle(
          color: (amItemModelObj.isSelected ?? false)
              ? appTheme.black900
              : theme.colorScheme.onPrimaryContainer,
          fontSize: 20.fSize,
          fontFamily: 'Averia Sans Libre',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (amItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.blueGray100.withOpacity(0.3),
      shape: (amItemModelObj.isSelected ?? false)
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
