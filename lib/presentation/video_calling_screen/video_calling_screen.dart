import 'bloc/video_calling_bloc.dart';
import 'models/video_calling_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class VideoCallingScreen extends StatelessWidget {
  const VideoCallingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VideoCallingBloc>(
      create: (context) => VideoCallingBloc(VideoCallingState(
        videoCallingModelObj: VideoCallingModel(),
      ))
        ..add(VideoCallingInitialEvent()),
      child: VideoCallingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<VideoCallingBloc, VideoCallingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, -0.09),
                  end: Alignment(0.5, 1.78),
                  colors: [
                    theme.colorScheme.primary,
                    theme.colorScheme.primary.withOpacity(0),
                  ],
                ),
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgVideoCalling,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 19.h,
                  vertical: 56.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    _buildVideoCallingRow(context),
                    SizedBox(height: 23.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          padding: EdgeInsets.all(18.h),
                          decoration:
                              IconButtonStyleHelper.fillOnPrimaryContainerTL30,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrameBlack90060x60,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            decoration: IconButtonStyleHelper.fillLightBlue,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame3,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 19.h),
                          child: CustomIconButton(
                            height: 60.adaptSize,
                            width: 60.adaptSize,
                            padding: EdgeInsets.all(18.h),
                            decoration: IconButtonStyleHelper.fillOnPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrame60x60,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildVideoCallingRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 58.v,
              bottom: 53.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_dr_upul".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 13.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 6.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.greenA700,
                          borderRadius: BorderRadius.circular(
                            7.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text(
                          "lbl_10_00".tr,
                          style: CustomTextStyles.titleLargeBold_2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle46,
            height: 188.v,
            width: 146.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
        ],
      ),
    );
  }
}
