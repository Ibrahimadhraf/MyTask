// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listvector2_item_model.dart';
import 'listdate_item_model.dart';
import 'listvector3_item_model.dart';

/// This class defines the variables used in the [add_plant_thirteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantThirteenModel extends Equatable {
  AddPlantThirteenModel({
    this.listvector2ItemList = const [],
    this.listdateItemList = const [],
    this.listvector3ItemList = const [],
  });

  List<Listvector2ItemModel> listvector2ItemList;

  List<ListdateItemModel> listdateItemList;

  List<Listvector3ItemModel> listvector3ItemList;

  AddPlantThirteenModel copyWith({
    List<Listvector2ItemModel>? listvector2ItemList,
    List<ListdateItemModel>? listdateItemList,
    List<Listvector3ItemModel>? listvector3ItemList,
  }) {
    return AddPlantThirteenModel(
      listvector2ItemList: listvector2ItemList ?? this.listvector2ItemList,
      listdateItemList: listdateItemList ?? this.listdateItemList,
      listvector3ItemList: listvector3ItemList ?? this.listvector3ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listvector2ItemList, listdateItemList, listvector3ItemList];
}
