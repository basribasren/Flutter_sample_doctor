import '../message_one_page/widgets/userlist_item_widget.dart';
import '../message_one_page/widgets/userprofileinfo_item_widget.dart';
import 'bloc/message_one_bloc.dart';
import 'models/message_one_model.dart';
import 'models/userlist_item_model.dart';
import 'models/userprofileinfo_item_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application2/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessageOnePage extends StatelessWidget {
  const MessageOnePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MessageOneBloc>(
      create: (context) => MessageOneBloc(MessageOneState(
        messageOneModelObj: MessageOneModel(),
      ))
        ..add(MessageOneInitialEvent()),
      child: MessageOnePage(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.h),
                  child: BlocSelector<MessageOneBloc, MessageOneState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search_a_doctar".tr,
                        alignment: Alignment.center,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Text(
                  "lbl_active_now".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 20.v),
              _buildUserList(context),
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Text(
                  "lbl_messages".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 29.v),
              _buildUserProfileInfo(context),
            ],
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
        text: "lbl_message".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserList(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 60.v,
        child: BlocSelector<MessageOneBloc, MessageOneState, MessageOneModel?>(
          selector: (state) => state.messageOneModelObj,
          builder: (context, messageOneModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 26.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 27.h,
                );
              },
              itemCount: messageOneModelObj?.userlistItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserlistItemModel model =
                    messageOneModelObj?.userlistItemList[index] ??
                        UserlistItemModel();
                return UserlistItemWidget(
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
  Widget _buildUserProfileInfo(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: BlocSelector<MessageOneBloc, MessageOneState, MessageOneModel?>(
          selector: (state) => state.messageOneModelObj,
          builder: (context, messageOneModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 15.v,
                );
              },
              itemCount:
                  messageOneModelObj?.userprofileinfoItemList.length ?? 0,
              itemBuilder: (context, index) {
                UserprofileinfoItemModel model =
                    messageOneModelObj?.userprofileinfoItemList[index] ??
                        UserprofileinfoItemModel();
                return UserprofileinfoItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
