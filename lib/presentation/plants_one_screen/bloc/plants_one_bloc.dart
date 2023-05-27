import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/filtercategorie1_item_model.dart';
import '../models/plants_one_item_model.dart';
import 'package:ebrahim_s_application1/presentation/plants_one_screen/models/plants_one_model.dart';
part 'plants_one_event.dart';
part 'plants_one_state.dart';

class PlantsOneBloc extends Bloc<PlantsOneEvent, PlantsOneState> {
  PlantsOneBloc(PlantsOneState initialState) : super(initialState) {
    on<PlantsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlantsOneInitialEvent event,
    Emitter<PlantsOneState> emit,
  ) async {
    emit(state.copyWith(
        plantsOneModelObj: state.plantsOneModelObj?.copyWith(
            filtercategorie1ItemList: fillFiltercategorie1ItemList(),
            plantsOneItemList: fillPlantsOneItemList())));
  }

  List<Filtercategorie1ItemModel> fillFiltercategorie1ItemList() {
    return List.generate(5, (index) => Filtercategorie1ItemModel());
  }

  List<PlantsOneItemModel> fillPlantsOneItemList() {
    return List.generate(10, (index) => PlantsOneItemModel());
  }
}
