// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listframe4_item_model.dart';
import 'listvector10_item_model.dart';

/// This class defines the variables used in the [add_plant_eleven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantElevenModel extends Equatable {
  AddPlantElevenModel({
    this.listframe4ItemList = const [],
    this.listvector10ItemList = const [],
  });

  List<Listframe4ItemModel> listframe4ItemList;

  List<Listvector10ItemModel> listvector10ItemList;

  AddPlantElevenModel copyWith({
    List<Listframe4ItemModel>? listframe4ItemList,
    List<Listvector10ItemModel>? listvector10ItemList,
  }) {
    return AddPlantElevenModel(
      listframe4ItemList: listframe4ItemList ?? this.listframe4ItemList,
      listvector10ItemList: listvector10ItemList ?? this.listvector10ItemList,
    );
  }

  @override
  List<Object?> get props => [listframe4ItemList, listvector10ItemList];
}
