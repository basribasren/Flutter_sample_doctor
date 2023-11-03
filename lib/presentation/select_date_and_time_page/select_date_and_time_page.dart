import '../select_date_and_time_page/widgets/am2_item_widget.dart';
import 'bloc/select_date_and_time_bloc.dart';
import 'models/am2_item_model.dart';
import 'models/select_date_and_time_model.dart';
import 'package:basri_s_application2/core/app_export.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:basri_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore_for_file: must_be_immutable
class SelectDateAndTimePage extends StatelessWidget {
  const SelectDateAndTimePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SelectDateAndTimeBloc>(
      create: (context) => SelectDateAndTimeBloc(SelectDateAndTimeState(
        selectDateAndTimeModelObj: SelectDateAndTimeModel(),
      ))
        ..add(SelectDateAndTimeInitialEvent()),
      child: SelectDateAndTimePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            children: [
              SizedBox(height: 19.v),
              _buildCalendar(context),
              SizedBox(height: 58.v),
              _buildAvailableTimeSlotRow(context),
              SizedBox(height: 38.v),
              _buildTimeSlotRow(context),
              SizedBox(height: 61.v),
              CustomElevatedButton(
                height: 60.v,
                text: "lbl_set_appointment".tr,
                margin: EdgeInsets.symmetric(horizontal: 26.h),
              ),
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
        text: "msg_select_date_and".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return BlocBuilder<SelectDateAndTimeBloc, SelectDateAndTimeState>(
      builder: (context, state) {
        return SizedBox(
          height: 377.v,
          width: 323.h,
          child: TableCalendar(
            locale: 'en_US',
            firstDay: DateTime(DateTime.now().year - 5),
            lastDay: DateTime(DateTime.now().year + 5),
            calendarFormat: CalendarFormat.month,
            rangeSelectionMode: state.rangeSelectionMode,
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              isTodayHighlighted: true,
              todayTextStyle: TextStyle(
                color: appTheme.black900,
                fontFamily: 'Averia Sans Libre',
                fontWeight: FontWeight.w400,
              ),
              todayDecoration: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  18.31.h,
                ),
              ),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                color: appTheme.black900,
                fontFamily: 'Averia Sans Libre',
                fontWeight: FontWeight.w700,
              ),
            ),
            rowHeight: 36.62.v,
            focusedDay: state.focusedDay ?? DateTime.now(),
            rangeStartDay: state.rangeStart,
            rangeEndDay: state.rangeEnd,
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(state.selectedDay, selectedDay)) {
                state.focusedDay = focusedDay;
                state.selectedDay = selectedDay;
                state.rangeSelectionMode = RangeSelectionMode.toggledOn;
              }
            },
            onRangeSelected: (start, end, focusedDay) {
              state.focusedDay = focusedDay;
              state.rangeEnd = end;
              state.rangeStart = start;
              state.rangeSelectionMode = RangeSelectionMode.toggledOn;
            },
            onPageChanged: (focusedDay) {
              state.focusedDay = focusedDay;
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAvailableTimeSlotRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 21.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_available_time_slot".tr,
            style: CustomTextStyles.headlineSmallBold,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_see_all".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTimeSlotRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 32.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocSelector<SelectDateAndTimeBloc, SelectDateAndTimeState,
                  SelectDateAndTimeModel?>(
                selector: (state) => state.selectDateAndTimeModelObj,
                builder: (context, selectDateAndTimeModelObj) {
                  return Wrap(
                    runSpacing: 25.11.v,
                    spacing: 25.11.h,
                    children: List<Widget>.generate(
                      selectDateAndTimeModelObj?.am2ItemList.length ?? 0,
                      (index) {
                        Am2ItemModel model =
                            selectDateAndTimeModelObj?.am2ItemList[index] ??
                                Am2ItemModel();

                        return Am2ItemWidget(
                          model,
                          onSelectedChipView: (value) {
                            context.read<SelectDateAndTimeBloc>().add(
                                UpdateChipViewEvent(
                                    index: index, isSelected: value));
                          },
                        );
                      },
                    ),
                  );
                },
              ),
              CustomElevatedButton(
                height: 56.v,
                width: 138.h,
                text: "lbl_08_00_am".tr,
                margin: EdgeInsets.only(left: 25.h),
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: theme.textTheme.titleLarge!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
