// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listtotalplants_item_model.dart';
import 'listgroup_item_model.dart';

/// This class defines the variables used in the [plant_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlantDetailsModel extends Equatable {
  PlantDetailsModel({
    this.listtotalplantsItemList = const [],
    this.listgroupItemList = const [],
  });

  List<ListtotalplantsItemModel> listtotalplantsItemList;

  List<ListgroupItemModel> listgroupItemList;

  PlantDetailsModel copyWith({
    List<ListtotalplantsItemModel>? listtotalplantsItemList,
    List<ListgroupItemModel>? listgroupItemList,
  }) {
    return PlantDetailsModel(
      listtotalplantsItemList:
          listtotalplantsItemList ?? this.listtotalplantsItemList,
      listgroupItemList: listgroupItemList ?? this.listgroupItemList,
    );
  }

  @override
  List<Object?> get props => [listtotalplantsItemList, listgroupItemList];
}
