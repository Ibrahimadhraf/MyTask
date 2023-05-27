// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'filtercategorie1_item_model.dart';
import 'plants_one_item_model.dart';

/// This class defines the variables used in the [plants_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlantsOneModel extends Equatable {
  PlantsOneModel({
    this.filtercategorie1ItemList = const [],
    this.plantsOneItemList = const [],
  });

  List<Filtercategorie1ItemModel> filtercategorie1ItemList;

  List<PlantsOneItemModel> plantsOneItemList;

  PlantsOneModel copyWith({
    List<Filtercategorie1ItemModel>? filtercategorie1ItemList,
    List<PlantsOneItemModel>? plantsOneItemList,
  }) {
    return PlantsOneModel(
      filtercategorie1ItemList:
          filtercategorie1ItemList ?? this.filtercategorie1ItemList,
      plantsOneItemList: plantsOneItemList ?? this.plantsOneItemList,
    );
  }

  @override
  List<Object?> get props => [filtercategorie1ItemList, plantsOneItemList];
}
