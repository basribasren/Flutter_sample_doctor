import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userlist_item_model.dart';
import '../models/userprofileinfo_item_model.dart';
import 'package:basri_s_application2/presentation/message_one_page/models/message_one_model.dart';
part 'message_one_event.dart';
part 'message_one_state.dart';

/// A bloc that manages the state of a MessageOne according to the event that is dispatched to it.
class MessageOneBloc extends Bloc<MessageOneEvent, MessageOneState> {
  MessageOneBloc(MessageOneState initialState) : super(initialState) {
    on<MessageOneInitialEvent>(_onInitialize);
  }

  List<UserlistItemModel> fillUserlistItemList() {
    return [
      UserlistItemModel(circleImage: ImageConstant.imgEllipse24),
      UserlistItemModel(circleImage: ImageConstant.imgEllipse25),
      UserlistItemModel(circleImage: ImageConstant.imgEllipse26),
      UserlistItemModel(circleImage: ImageConstant.imgEllipse27),
      UserlistItemModel(circleImage: ImageConstant.imgEllipse28)
    ];
  }

  List<UserprofileinfoItemModel> fillUserprofileinfoItemList() {
    return [
      UserprofileinfoItemModel(
          userImage: ImageConstant.imgEllipse33,
          userName: "Dr.Upul",
          userBalance: "12.50",
          userDescription: "Worem consectetur adipiscing elit.",
          ninetyFive: "2"),
      UserprofileinfoItemModel(
          userImage: ImageConstant.imgEllipse35,
          userName: "Dr.Silva",
          userBalance: "12.50"),
      UserprofileinfoItemModel(
          userImage: ImageConstant.imgEllipse37,
          userName: "Dr.Pawani",
          userBalance: "12.50"),
      UserprofileinfoItemModel(
          userImage: ImageConstant.imgEllipse39,
          userName: "Dr.Rayan",
          userBalance: "12.50")
    ];
  }

  _onInitialize(
    MessageOneInitialEvent event,
    Emitter<MessageOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        messageOneModelObj: state.messageOneModelObj?.copyWith(
      userlistItemList: fillUserlistItemList(),
      userprofileinfoItemList: fillUserprofileinfoItemList(),
    )));
  }
}
