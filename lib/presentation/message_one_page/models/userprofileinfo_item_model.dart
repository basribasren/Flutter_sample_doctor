import '../../../core/app_export.dart';

/// This class is used in the [userprofileinfo_item_widget] screen.
class UserprofileinfoItemModel {
  UserprofileinfoItemModel({
    this.userImage,
    this.userName,
    this.userBalance,
    this.userDescription,
    this.ninetyFive,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgEllipse33;
    userName = userName ?? "Dr.Upul";
    userBalance = userBalance ?? "12.50";
    userDescription = userDescription ?? "Worem consectetur adipiscing elit.";
    ninetyFive = ninetyFive ?? "2";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? userBalance;

  String? userDescription;

  String? ninetyFive;

  String? id;
}
