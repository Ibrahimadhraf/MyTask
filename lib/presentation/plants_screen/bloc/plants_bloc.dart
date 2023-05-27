import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/filtercategorie2_item_model.dart';
import '../models/listrectanglefi1_item_model.dart';
import 'package:ebrahim_s_application1/presentation/plants_screen/models/plants_model.dart';
part 'plants_event.dart';
part 'plants_state.dart';

class PlantsBloc extends Bloc<PlantsEvent, PlantsState> {
  PlantsBloc(PlantsState initialState) : super(initialState) {
    on<PlantsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlantsInitialEvent event,
    Emitter<PlantsState> emit,
  ) async {
    emit(state.copyWith(
        plantsModelObj: state.plantsModelObj?.copyWith(
            filtercategorie2ItemList: fillFiltercategorie2ItemList(),
            listrectanglefi1ItemList: fillListrectanglefi1ItemList())));
  }

  List<Filtercategorie2ItemModel> fillFiltercategorie2ItemList() {
    return List.generate(5, (index) => Filtercategorie2ItemModel());
  }

  List<Listrectanglefi1ItemModel> fillListrectanglefi1ItemList() {
    return List.generate(4, (index) => Listrectanglefi1ItemModel());
  }
}
