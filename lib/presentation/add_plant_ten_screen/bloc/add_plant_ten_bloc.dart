import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframe5_item_model.dart';
import '../models/listvector12_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_ten_screen/models/add_plant_ten_model.dart';
part 'add_plant_ten_event.dart';
part 'add_plant_ten_state.dart';

class AddPlantTenBloc extends Bloc<AddPlantTenEvent, AddPlantTenState> {
  AddPlantTenBloc(AddPlantTenState initialState) : super(initialState) {
    on<AddPlantTenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantTenState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantTenState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listframe5ItemModel> fillListframe5ItemList() {
    return List.generate(3, (index) => Listframe5ItemModel());
  }

  List<Listvector12ItemModel> fillListvector12ItemList() {
    return List.generate(4, (index) => Listvector12ItemModel());
  }

  _onInitialize(
    AddPlantTenInitialEvent event,
    Emitter<AddPlantTenState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantTenModelObj: state.addPlantTenModelObj?.copyWith(
            listframe5ItemList: fillListframe5ItemList(),
            listvector12ItemList: fillListvector12ItemList())));
  }
}
