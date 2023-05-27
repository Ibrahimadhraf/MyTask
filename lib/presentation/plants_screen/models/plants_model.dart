// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'filtercategorie2_item_model.dart';
import 'listrectanglefi1_item_model.dart';

/// This class defines the variables used in the [plants_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlantsModel extends Equatable {
  PlantsModel({
    this.filtercategorie2ItemList = const [],
    this.listrectanglefi1ItemList = const [],
  });

  List<Filtercategorie2ItemModel> filtercategorie2ItemList;

  List<Listrectanglefi1ItemModel> listrectanglefi1ItemList;

  PlantsModel copyWith({
    List<Filtercategorie2ItemModel>? filtercategorie2ItemList,
    List<Listrectanglefi1ItemModel>? listrectanglefi1ItemList,
  }) {
    return PlantsModel(
      filtercategorie2ItemList:
          filtercategorie2ItemList ?? this.filtercategorie2ItemList,
      listrectanglefi1ItemList:
          listrectanglefi1ItemList ?? this.listrectanglefi1ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [filtercategorie2ItemList, listrectanglefi1ItemList];
}
