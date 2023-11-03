// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'alldoctorslist_item_model.dart';

/// This class defines the variables used in the [all_doctors_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllDoctorsModel extends Equatable {
  AllDoctorsModel({this.alldoctorslistItemList = const []}) {}

  List<AlldoctorslistItemModel> alldoctorslistItemList;

  AllDoctorsModel copyWith(
      {List<AlldoctorslistItemModel>? alldoctorslistItemList}) {
    return AllDoctorsModel(
      alldoctorslistItemList:
          alldoctorslistItemList ?? this.alldoctorslistItemList,
    );
  }

  @override
  List<Object?> get props => [alldoctorslistItemList];
}
