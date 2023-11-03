// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [am2_item_widget] screen.
class Am2ItemModel extends Equatable {
  Am2ItemModel({
    this.am,
    this.isSelected,
  }) {
    am = am ?? "10.00 AM";
    isSelected = isSelected ?? false;
  }

  String? am;

  bool? isSelected;

  Am2ItemModel copyWith({
    String? am,
    bool? isSelected,
  }) {
    return Am2ItemModel(
      am: am ?? this.am,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [am, isSelected];
}
