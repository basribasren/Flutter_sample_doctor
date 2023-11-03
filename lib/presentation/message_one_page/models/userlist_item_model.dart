import '../../../core/app_export.dart';

/// This class is used in the [userlist_item_widget] screen.
class UserlistItemModel {
  UserlistItemModel({
    this.circleImage,
    this.id,
  }) {
    circleImage = circleImage ?? ImageConstant.imgEllipse24;
    id = id ?? "";
  }

  String? circleImage;

  String? id;
}
