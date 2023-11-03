// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'view_item_model.dart';
import '../../../core/app_export.dart';
import 'homelist_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.viewItemList = const [],
    this.homelistItemList = const [],
  }) {}

  List<ViewItemModel> viewItemList;

  List<HomelistItemModel> homelistItemList;

  HomeModel copyWith({
    List<ViewItemModel>? viewItemList,
    List<HomelistItemModel>? homelistItemList,
  }) {
    return HomeModel(
      viewItemList: viewItemList ?? this.viewItemList,
      homelistItemList: homelistItemList ?? this.homelistItemList,
    );
  }

  @override
  List<Object?> get props => [viewItemList, homelistItemList];
}
