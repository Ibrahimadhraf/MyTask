import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listvector13_item_model.dart';
import '../models/listdate4_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_three_screen/models/add_plant_three_model.dart';
part 'add_plant_three_event.dart';
part 'add_plant_three_state.dart';

class AddPlantThreeBloc extends Bloc<AddPlantThreeEvent, AddPlantThreeState> {
  AddPlantThreeBloc(AddPlantThreeState initialState) : super(initialState) {
    on<AddPlantThreeInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantThreeState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantThreeState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listvector13ItemModel> fillListvector13ItemList() {
    return List.generate(6, (index) => Listvector13ItemModel());
  }

  List<Listdate4ItemModel> fillListdate4ItemList() {
    return List.generate(3, (index) => Listdate4ItemModel());
  }

  _onInitialize(
    AddPlantThreeInitialEvent event,
    Emitter<AddPlantThreeState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantThreeModelObj: state.addPlantThreeModelObj?.copyWith(
            listvector13ItemList: fillListvector13ItemList(),
            listdate4ItemList: fillListdate4ItemList())));
  }
}
