// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listvector13_item_model.dart';
import 'listdate4_item_model.dart';

/// This class defines the variables used in the [add_plant_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantThreeModel extends Equatable {
  AddPlantThreeModel({
    this.listvector13ItemList = const [],
    this.listdate4ItemList = const [],
  });

  List<Listvector13ItemModel> listvector13ItemList;

  List<Listdate4ItemModel> listdate4ItemList;

  AddPlantThreeModel copyWith({
    List<Listvector13ItemModel>? listvector13ItemList,
    List<Listdate4ItemModel>? listdate4ItemList,
  }) {
    return AddPlantThreeModel(
      listvector13ItemList: listvector13ItemList ?? this.listvector13ItemList,
      listdate4ItemList: listdate4ItemList ?? this.listdate4ItemList,
    );
  }

  @override
  List<Object?> get props => [listvector13ItemList, listdate4ItemList];
}
