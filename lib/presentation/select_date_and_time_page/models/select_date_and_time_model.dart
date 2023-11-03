// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'am2_item_model.dart';

/// This class defines the variables used in the [select_date_and_time_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectDateAndTimeModel extends Equatable {
  SelectDateAndTimeModel({this.am2ItemList = const []}) {}

  List<Am2ItemModel> am2ItemList;

  SelectDateAndTimeModel copyWith({List<Am2ItemModel>? am2ItemList}) {
    return SelectDateAndTimeModel(
      am2ItemList: am2ItemList ?? this.am2ItemList,
    );
  }

  @override
  List<Object?> get props => [am2ItemList];
}
