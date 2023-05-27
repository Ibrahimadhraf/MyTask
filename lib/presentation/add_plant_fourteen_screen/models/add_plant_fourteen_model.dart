// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listframe2_item_model.dart';
import 'listvector4_item_model.dart';

/// This class defines the variables used in the [add_plant_fourteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantFourteenModel extends Equatable {
  AddPlantFourteenModel({
    this.listframe2ItemList = const [],
    this.listvector4ItemList = const [],
  });

  List<Listframe2ItemModel> listframe2ItemList;

  List<Listvector4ItemModel> listvector4ItemList;

  AddPlantFourteenModel copyWith({
    List<Listframe2ItemModel>? listframe2ItemList,
    List<Listvector4ItemModel>? listvector4ItemList,
  }) {
    return AddPlantFourteenModel(
      listframe2ItemList: listframe2ItemList ?? this.listframe2ItemList,
      listvector4ItemList: listvector4ItemList ?? this.listvector4ItemList,
    );
  }

  @override
  List<Object?> get props => [listframe2ItemList, listvector4ItemList];
}
