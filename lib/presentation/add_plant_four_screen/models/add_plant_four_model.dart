// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listvector8_item_model.dart';
import 'listdate2_item_model.dart';
import 'listvector9_item_model.dart';

/// This class defines the variables used in the [add_plant_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantFourModel extends Equatable {
  AddPlantFourModel({
    this.listvector8ItemList = const [],
    this.listdate2ItemList = const [],
    this.listvector9ItemList = const [],
  });

  List<Listvector8ItemModel> listvector8ItemList;

  List<Listdate2ItemModel> listdate2ItemList;

  List<Listvector9ItemModel> listvector9ItemList;

  AddPlantFourModel copyWith({
    List<Listvector8ItemModel>? listvector8ItemList,
    List<Listdate2ItemModel>? listdate2ItemList,
    List<Listvector9ItemModel>? listvector9ItemList,
  }) {
    return AddPlantFourModel(
      listvector8ItemList: listvector8ItemList ?? this.listvector8ItemList,
      listdate2ItemList: listdate2ItemList ?? this.listdate2ItemList,
      listvector9ItemList: listvector9ItemList ?? this.listvector9ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listvector8ItemList, listdate2ItemList, listvector9ItemList];
}
