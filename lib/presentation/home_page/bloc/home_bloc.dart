import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/view_item_model.dart';
import '../models/homelist_item_model.dart';
import 'package:basri_s_application2/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  List<ViewItemModel> fillViewItemList() {
    return List.generate(1, (index) => ViewItemModel());
  }

  List<HomelistItemModel> fillHomelistItemList() {
    return [
      HomelistItemModel(group: "denteeth"),
      HomelistItemModel(group: "Theripist"),
      HomelistItemModel(group: "denteeth")
    ];
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      viewItemList: fillViewItemList(),
      homelistItemList: fillHomelistItemList(),
    )));
  }
}
