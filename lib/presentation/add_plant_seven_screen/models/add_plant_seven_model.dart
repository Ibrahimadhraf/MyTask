// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listframe6_item_model.dart';
import 'listvector14_item_model.dart';

/// This class defines the variables used in the [add_plant_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantSevenModel extends Equatable {
  AddPlantSevenModel({
    this.listframe6ItemList = const [],
    this.listvector14ItemList = const [],
  });

  List<Listframe6ItemModel> listframe6ItemList;

  List<Listvector14ItemModel> listvector14ItemList;

  AddPlantSevenModel copyWith({
    List<Listframe6ItemModel>? listframe6ItemList,
    List<Listvector14ItemModel>? listvector14ItemList,
  }) {
    return AddPlantSevenModel(
      listframe6ItemList: listframe6ItemList ?? this.listframe6ItemList,
      listvector14ItemList: listvector14ItemList ?? this.listvector14ItemList,
    );
  }

  @override
  List<Object?> get props => [listframe6ItemList, listvector14ItemList];
}
