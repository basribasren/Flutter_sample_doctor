// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userlist_item_model.dart';
import 'userprofileinfo_item_model.dart';

/// This class defines the variables used in the [message_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageOneModel extends Equatable {
  MessageOneModel({
    this.userlistItemList = const [],
    this.userprofileinfoItemList = const [],
  }) {}

  List<UserlistItemModel> userlistItemList;

  List<UserprofileinfoItemModel> userprofileinfoItemList;

  MessageOneModel copyWith({
    List<UserlistItemModel>? userlistItemList,
    List<UserprofileinfoItemModel>? userprofileinfoItemList,
  }) {
    return MessageOneModel(
      userlistItemList: userlistItemList ?? this.userlistItemList,
      userprofileinfoItemList:
          userprofileinfoItemList ?? this.userprofileinfoItemList,
    );
  }

  @override
  List<Object?> get props => [userlistItemList, userprofileinfoItemList];
}
