// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listvector11_item_model.dart';
import 'listdate3_item_model.dart';

/// This class defines the variables used in the [add_plant_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantOneModel extends Equatable {
  AddPlantOneModel({
    this.listvector11ItemList = const [],
    this.listdate3ItemList = const [],
  });

  List<Listvector11ItemModel> listvector11ItemList;

  List<Listdate3ItemModel> listdate3ItemList;

  AddPlantOneModel copyWith({
    List<Listvector11ItemModel>? listvector11ItemList,
    List<Listdate3ItemModel>? listdate3ItemList,
  }) {
    return AddPlantOneModel(
      listvector11ItemList: listvector11ItemList ?? this.listvector11ItemList,
      listdate3ItemList: listdate3ItemList ?? this.listdate3ItemList,
    );
  }

  @override
  List<Object?> get props => [listvector11ItemList, listdate3ItemList];
}
