import '../all_doctors_screen/widgets/alldoctorslist_item_widget.dart';
import 'bloc/all_doctors_bloc.dart';
import 'models/all_doctors_model.dart';
import 'models/alldoctorslist_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class AllDoctorsScreen extends StatelessWidget {
  const AllDoctorsScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AllDoctorsBloc>(
      create: (context) => AllDoctorsBloc(AllDoctorsState(
        allDoctorsModelObj: AllDoctorsModel(),
      ))
        ..add(AllDoctorsInitialEvent()),
      child: AllDoctorsScreen(),
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
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 28.v),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.h),
              child: Column(
                children: [
                  BlocSelector<AllDoctorsBloc, AllDoctorsState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search_a_doctar".tr,
                      );
                    },
                  ),
                  SizedBox(height: 36.v),
                  _buildAllDoctorsList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrameBlack90040x40,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_all_doctors".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildAllDoctorsList(BuildContext context) {
    return BlocSelector<AllDoctorsBloc, AllDoctorsState, AllDoctorsModel?>(
      selector: (state) => state.allDoctorsModelObj,
      builder: (context, allDoctorsModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 29.v,
            );
          },
          itemCount: allDoctorsModelObj?.alldoctorslistItemList.length ?? 0,
          itemBuilder: (context, index) {
            AlldoctorslistItemModel model =
                allDoctorsModelObj?.alldoctorslistItemList[index] ??
                    AlldoctorslistItemModel();
            return AlldoctorslistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
