// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listvector5_item_model.dart';
import 'listdate1_item_model.dart';
import 'listvector6_item_model.dart';

/// This class defines the variables used in the [add_plant_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantTwoModel extends Equatable {
  AddPlantTwoModel({
    this.listvector5ItemList = const [],
    this.listdate1ItemList = const [],
    this.listvector6ItemList = const [],
  });

  List<Listvector5ItemModel> listvector5ItemList;

  List<Listdate1ItemModel> listdate1ItemList;

  List<Listvector6ItemModel> listvector6ItemList;

  AddPlantTwoModel copyWith({
    List<Listvector5ItemModel>? listvector5ItemList,
    List<Listdate1ItemModel>? listdate1ItemList,
    List<Listvector6ItemModel>? listvector6ItemList,
  }) {
    return AddPlantTwoModel(
      listvector5ItemList: listvector5ItemList ?? this.listvector5ItemList,
      listdate1ItemList: listdate1ItemList ?? this.listdate1ItemList,
      listvector6ItemList: listvector6ItemList ?? this.listvector6ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listvector5ItemList, listdate1ItemList, listvector6ItemList];
}
