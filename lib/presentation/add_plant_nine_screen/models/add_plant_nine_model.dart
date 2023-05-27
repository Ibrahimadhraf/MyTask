// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listframe_item_model.dart';
import 'listvector_item_model.dart';

/// This class defines the variables used in the [add_plant_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantNineModel extends Equatable {
  AddPlantNineModel({
    this.listframeItemList = const [],
    this.listvectorItemList = const [],
  });

  List<ListframeItemModel> listframeItemList;

  List<ListvectorItemModel> listvectorItemList;

  AddPlantNineModel copyWith({
    List<ListframeItemModel>? listframeItemList,
    List<ListvectorItemModel>? listvectorItemList,
  }) {
    return AddPlantNineModel(
      listframeItemList: listframeItemList ?? this.listframeItemList,
      listvectorItemList: listvectorItemList ?? this.listvectorItemList,
    );
  }

  @override
  List<Object?> get props => [listframeItemList, listvectorItemList];
}
