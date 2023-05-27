// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listframe5_item_model.dart';
import 'listvector12_item_model.dart';

/// This class defines the variables used in the [add_plant_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantTenModel extends Equatable {
  AddPlantTenModel({
    this.listframe5ItemList = const [],
    this.listvector12ItemList = const [],
  });

  List<Listframe5ItemModel> listframe5ItemList;

  List<Listvector12ItemModel> listvector12ItemList;

  AddPlantTenModel copyWith({
    List<Listframe5ItemModel>? listframe5ItemList,
    List<Listvector12ItemModel>? listvector12ItemList,
  }) {
    return AddPlantTenModel(
      listframe5ItemList: listframe5ItemList ?? this.listframe5ItemList,
      listvector12ItemList: listvector12ItemList ?? this.listvector12ItemList,
    );
  }

  @override
  List<Object?> get props => [listframe5ItemList, listvector12ItemList];
}
