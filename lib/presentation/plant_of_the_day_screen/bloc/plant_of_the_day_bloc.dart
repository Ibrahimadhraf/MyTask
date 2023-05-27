import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/plant_of_the_item_model.dart';
import 'package:ebrahim_s_application1/presentation/plant_of_the_day_screen/models/plant_of_the_day_model.dart';
part 'plant_of_the_day_event.dart';
part 'plant_of_the_day_state.dart';

class PlantOfTheDayBloc extends Bloc<PlantOfTheDayEvent, PlantOfTheDayState> {
  PlantOfTheDayBloc(PlantOfTheDayState initialState) : super(initialState) {
    on<PlantOfTheDayInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<PlantOfTheDayState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  List<PlantOfTheItemModel> fillPlantOfTheItemList() {
    return List.generate(2, (index) => PlantOfTheItemModel());
  }

  _onInitialize(
    PlantOfTheDayInitialEvent event,
    Emitter<PlantOfTheDayState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false));
    emit(state.copyWith(
        plantOfTheDayModelObj: state.plantOfTheDayModelObj
            ?.copyWith(plantOfTheItemList: fillPlantOfTheItemList())));
  }
}
