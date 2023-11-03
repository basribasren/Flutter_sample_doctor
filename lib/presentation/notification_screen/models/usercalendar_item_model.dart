/// This class is used in the [usercalendar_item_widget] screen.
class UsercalendarItemModel {
  UsercalendarItemModel({
    this.monthName,
    this.timeInterval,
    this.description,
    this.id,
  }) {
    monthName = monthName ?? "April 2023";
    timeInterval = timeInterval ?? "15 Min";
    description = description ?? "Corem ipsum dolor sit amet,adipiscing elit.";
    id = id ?? "";
  }

  String? monthName;

  String? timeInterval;

  String? description;

  String? id;
}
