import '../../../core/app_export.dart';

/// This class is used in the [alldoctorslist_item_widget] screen.
class AlldoctorslistItemModel {
  AlldoctorslistItemModel({
    this.drPawan,
    this.weburl,
    this.drPawan1,
    this.joremIpsumDolor,
    this.fifty,
    this.id,
  }) {
    drPawan = drPawan ?? ImageConstant.imgDoctorBulkBil;
    weburl = weburl ?? "Dr.Pawan";
    drPawan1 = drPawan1 ?? ImageConstant.imgFramePrimary;
    joremIpsumDolor = joremIpsumDolor ??
        "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.";
    fifty = fifty ?? "5.0";
    id = id ?? "";
  }

  String? drPawan;

  String? weburl;

  String? drPawan1;

  String? joremIpsumDolor;

  String? fifty;

  String? id;
}
