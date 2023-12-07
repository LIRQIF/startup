import '../../../core/app_export.dart';

/// This class is used in the [androidlargefour_item_widget] screen.
class AndroidlargefourItemModel {
  AndroidlargefourItemModel({
    this.akulaku,
    this.one,
    this.id,
  }) {
    akulaku = akulaku ?? "Akulaku";
    one = one ?? "0,1%";
    id = id ?? "";
  }

  String? akulaku;

  String? one;

  String? id;
}
