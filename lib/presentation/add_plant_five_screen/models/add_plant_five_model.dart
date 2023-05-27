// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listframe1_item_model.dart';
import 'listvector1_item_model.dart';

/// This class defines the variables used in the [add_plant_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantFiveModel extends Equatable {
  AddPlantFiveModel({
    this.listframe1ItemList = const [],
    this.listvector1ItemList = const [],
  });

  List<Listframe1ItemModel> listframe1ItemList;

  List<Listvector1ItemModel> listvector1ItemList;

  AddPlantFiveModel copyWith({
    List<Listframe1ItemModel>? listframe1ItemList,
    List<Listvector1ItemModel>? listvector1ItemList,
  }) {
    return AddPlantFiveModel(
      listframe1ItemList: listframe1ItemList ?? this.listframe1ItemList,
      listvector1ItemList: listvector1ItemList ?? this.listvector1ItemList,
    );
  }

  @override
  List<Object?> get props => [listframe1ItemList, listvector1ItemList];
}
