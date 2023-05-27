// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listframe7_item_model.dart';
import 'filtercategorie_item_model.dart';
import 'listtype_item_model.dart';

/// This class defines the variables used in the [plant_details_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlantDetailsTwoModel extends Equatable {
  PlantDetailsTwoModel({
    this.listframe7ItemList = const [],
    this.filtercategorieItemList = const [],
    this.listtypeItemList = const [],
  });

  List<Listframe7ItemModel> listframe7ItemList;

  List<FiltercategorieItemModel> filtercategorieItemList;

  List<ListtypeItemModel> listtypeItemList;

  PlantDetailsTwoModel copyWith({
    List<Listframe7ItemModel>? listframe7ItemList,
    List<FiltercategorieItemModel>? filtercategorieItemList,
    List<ListtypeItemModel>? listtypeItemList,
  }) {
    return PlantDetailsTwoModel(
      listframe7ItemList: listframe7ItemList ?? this.listframe7ItemList,
      filtercategorieItemList:
          filtercategorieItemList ?? this.filtercategorieItemList,
      listtypeItemList: listtypeItemList ?? this.listtypeItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listframe7ItemList, filtercategorieItemList, listtypeItemList];
}
