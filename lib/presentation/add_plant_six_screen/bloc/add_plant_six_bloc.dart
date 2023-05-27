import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframe3_item_model.dart';
import '../models/listvector7_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_six_screen/models/add_plant_six_model.dart';
part 'add_plant_six_event.dart';
part 'add_plant_six_state.dart';

class AddPlantSixBloc extends Bloc<AddPlantSixEvent, AddPlantSixState> {
  AddPlantSixBloc(AddPlantSixState initialState) : super(initialState) {
    on<AddPlantSixInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantSixState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantSixState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listframe3ItemModel> fillListframe3ItemList() {
    return List.generate(3, (index) => Listframe3ItemModel());
  }

  List<Listvector7ItemModel> fillListvector7ItemList() {
    return List.generate(4, (index) => Listvector7ItemModel());
  }

  _onInitialize(
    AddPlantSixInitialEvent event,
    Emitter<AddPlantSixState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantSixModelObj: state.addPlantSixModelObj?.copyWith(
            listframe3ItemList: fillListframe3ItemList(),
            listvector7ItemList: fillListvector7ItemList())));
  }
}
