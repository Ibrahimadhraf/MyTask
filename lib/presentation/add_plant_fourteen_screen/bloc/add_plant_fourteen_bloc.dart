import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframe2_item_model.dart';
import '../models/listvector4_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_fourteen_screen/models/add_plant_fourteen_model.dart';
part 'add_plant_fourteen_event.dart';
part 'add_plant_fourteen_state.dart';

class AddPlantFourteenBloc
    extends Bloc<AddPlantFourteenEvent, AddPlantFourteenState> {
  AddPlantFourteenBloc(AddPlantFourteenState initialState)
      : super(initialState) {
    on<AddPlantFourteenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantFourteenState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantFourteenState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listframe2ItemModel> fillListframe2ItemList() {
    return List.generate(3, (index) => Listframe2ItemModel());
  }

  List<Listvector4ItemModel> fillListvector4ItemList() {
    return List.generate(4, (index) => Listvector4ItemModel());
  }

  _onInitialize(
    AddPlantFourteenInitialEvent event,
    Emitter<AddPlantFourteenState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantFourteenModelObj: state.addPlantFourteenModelObj?.copyWith(
            listframe2ItemList: fillListframe2ItemList(),
            listvector4ItemList: fillListvector4ItemList())));
  }
}
