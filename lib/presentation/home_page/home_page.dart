import '../home_page/widgets/homelist_item_widget.dart';
import '../home_page/widgets/view_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/homelist_item_model.dart';
import 'models/view_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:basri_s_application2/widgets/custom_search_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 26.h,
                  right: 25.h,
                ),
                child:
                    BlocSelector<HomeBloc, HomeState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search_a_doctar".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 31.v),
              _buildSliderView(context),
              SizedBox(height: 19.v),
              SizedBox(
                height: 15.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 4,
                  effect: ScrollingDotsEffect(
                    spacing: 8.41,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: theme.colorScheme.secondaryContainer,
                    dotHeight: 15.v,
                    dotWidth: 15.h,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: _buildAllDoctors(
                  context,
                  allDoctorsText: "lbl_categories".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 25.v),
              _buildHomeList(context),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.h),
                child: _buildAllDoctors(
                  context,
                  allDoctorsText: "lbl_all_doctors".tr,
                  seeAllText: "lbl_see_all".tr,
                ),
              ),
              SizedBox(height: 25.v),
              _buildBookRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 101.v,
      leadingWidth: 96.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse18,
        margin: EdgeInsets.only(left: 26.h),
      ),
      title: AppbarSubtitleOne(
        text: "lbl_chathura".tr,
        margin: EdgeInsets.only(left: 19.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame,
          margin: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 19.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSliderView(BuildContext context) {
    return SizedBox(
      height: 169.v,
      width: 390.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return CarouselSlider.builder(
                options: CarouselOptions(
                  height: 169.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (
                    index,
                    reason,
                  ) {
                    state.sliderIndex = index;
                  },
                ),
                itemCount: state.homeModelObj?.viewItemList.length ?? 0,
                itemBuilder: (context, index, realIndex) {
                  ViewItemModel model =
                      state.homeModelObj?.viewItemList[index] ??
                          ViewItemModel();
                  return ViewItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIstockphoto136,
            height: 156.v,
            width: 230.h,
            alignment: Alignment.bottomRight,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 17.v,
              ),
              child: Text(
                "lbl_medical_center".tr,
                style: CustomTextStyles.headlineMediumBlack900Regular_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 193.h,
              margin: EdgeInsets.only(
                left: 16.h,
                bottom: 26.v,
              ),
              child: Text(
                "msg_yorem_ipsum_dolor".tr,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeOnPrimaryContainer_1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 80.v,
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
          selector: (state) => state.homeModelObj,
          builder: (context, homeModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 26.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 17.h,
                );
              },
              itemCount: homeModelObj?.homelistItemList.length ?? 0,
              itemBuilder: (context, index) {
                HomelistItemModel model =
                    homeModelObj?.homelistItemList[index] ??
                        HomelistItemModel();
                return HomelistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 26.h),
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDoctorBulkBil,
            height: 153.v,
            width: 138.h,
            margin: EdgeInsets.only(top: 8.v),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(24.h, 24.v, 1.h, 15.v),
            child: Column(
              children: [
                SizedBox(
                  width: 182.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_dr_pawan".tr,
                        style: theme.textTheme.titleLarge,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFramePrimary,
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
                    "msg_jorem_ipsum_dolor".tr,
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
                          "lbl_5_0".tr,
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

  /// Common widget
  Widget _buildAllDoctors(
    BuildContext context, {
    required String allDoctorsText,
    required String seeAllText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          allDoctorsText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 2.v,
          ),
          child: Text(
            seeAllText,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
