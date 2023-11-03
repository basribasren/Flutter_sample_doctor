import 'package:basri_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgFrameBlack900,
      activeIcon: ImageConstant.imgFrameBlack900,
      type: BottomBarEnum.Frameblack900,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameBlack90024x24,
      activeIcon: ImageConstant.imgFrameBlack90024x24,
      type: BottomBarEnum.Frameblack90024x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame24x24,
      activeIcon: ImageConstant.imgFrame24x24,
      type: BottomBarEnum.Frame24x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame1,
      activeIcon: ImageConstant.imgFrame1,
      type: BottomBarEnum.Frame1,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83.v,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30.h),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 24.adaptSize,
              width: 24.adaptSize,
              color: appTheme.black900,
            ),
            activeIcon: Container(
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: appTheme.black900,
                margin: EdgeInsets.only(
                  top: 13.v,
                  bottom: 12.v,
                ),
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Frameblack900,
  Frameblack90024x24,
  Frame24x24,
  Frame1,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
