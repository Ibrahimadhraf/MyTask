import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listtotalplants_item_model.dart';
import '../models/listgroup_item_model.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/presentation/plant_details_screen/models/plant_details_model.dart';
part 'plant_details_event.dart';
part 'plant_details_state.dart';

class PlantDetailsBloc extends Bloc<PlantDetailsEvent, PlantDetailsState> {
  PlantDetailsBloc(PlantDetailsState initialState) : super(initialState) {
    on<PlantDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlantDetailsInitialEvent event,
    Emitter<PlantDetailsState> emit,
  ) async {
    emit(state.copyWith(
        plantDetailsModelObj: state.plantDetailsModelObj?.copyWith(
      listtotalplantsItemList: fillListtotalplantsItemList(),
      listgroupItemList: fillListgroupItemList(),
    )));
  }

  List<ListtotalplantsItemModel> fillListtotalplantsItemList() {
    return List.generate(3, (index) => ListtotalplantsItemModel());
  }

  List<ListgroupItemModel> fillListgroupItemList() {
    return List.generate(5, (index) => ListgroupItemModel());
  }
}
