// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listframe3_item_model.dart';
import 'listvector7_item_model.dart';

/// This class defines the variables used in the [add_plant_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantSixModel extends Equatable {
  AddPlantSixModel({
    this.listframe3ItemList = const [],
    this.listvector7ItemList = const [],
  });

  List<Listframe3ItemModel> listframe3ItemList;

  List<Listvector7ItemModel> listvector7ItemList;

  AddPlantSixModel copyWith({
    List<Listframe3ItemModel>? listframe3ItemList,
    List<Listvector7ItemModel>? listvector7ItemList,
  }) {
    return AddPlantSixModel(
      listframe3ItemList: listframe3ItemList ?? this.listframe3ItemList,
      listvector7ItemList: listvector7ItemList ?? this.listvector7ItemList,
    );
  }

  @override
  List<Object?> get props => [listframe3ItemList, listvector7ItemList];
}
