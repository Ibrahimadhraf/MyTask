import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframe7_item_model.dart';
import '../models/filtercategorie_item_model.dart';
import '../models/listtype_item_model.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/presentation/plant_details_two_screen/models/plant_details_two_model.dart';
part 'plant_details_two_event.dart';
part 'plant_details_two_state.dart';

class PlantDetailsTwoBloc
    extends Bloc<PlantDetailsTwoEvent, PlantDetailsTwoState> {
  PlantDetailsTwoBloc(PlantDetailsTwoState initialState) : super(initialState) {
    on<PlantDetailsTwoInitialEvent>(_onInitialize);
  }

  List<Listframe7ItemModel> fillListframe7ItemList() {
    return List.generate(2, (index) => Listframe7ItemModel());
  }

  List<FiltercategorieItemModel> fillFiltercategorieItemList() {
    return List.generate(5, (index) => FiltercategorieItemModel());
  }

  List<ListtypeItemModel> fillListtypeItemList() {
    return List.generate(5, (index) => ListtypeItemModel());
  }

  _onInitialize(
    PlantDetailsTwoInitialEvent event,
    Emitter<PlantDetailsTwoState> emit,
  ) async {
    emit(state.copyWith(
      group152Controller: TextEditingController(),
    ));
    emit(state.copyWith(
        plantDetailsTwoModelObj: state.plantDetailsTwoModelObj?.copyWith(
      listframe7ItemList: fillListframe7ItemList(),
      filtercategorieItemList: fillFiltercategorieItemList(),
      listtypeItemList: fillListtypeItemList(),
    )));
  }
}
