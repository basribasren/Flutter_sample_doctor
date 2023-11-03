/// This class is used in the [homelist_item_widget] screen.
class HomelistItemModel {
  HomelistItemModel({
    this.group,
    this.id,
  }) {
    group = group ?? "denteeth";
    id = id ?? "";
  }

  String? group;

  String? id;
}
