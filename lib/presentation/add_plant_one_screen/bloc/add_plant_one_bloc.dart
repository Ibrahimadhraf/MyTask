import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listvector11_item_model.dart';
import '../models/listdate3_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_one_screen/models/add_plant_one_model.dart';
part 'add_plant_one_event.dart';
part 'add_plant_one_state.dart';

class AddPlantOneBloc extends Bloc<AddPlantOneEvent, AddPlantOneState> {
  AddPlantOneBloc(AddPlantOneState initialState) : super(initialState) {
    on<AddPlantOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantOneState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantOneState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listvector11ItemModel> fillListvector11ItemList() {
    return List.generate(5, (index) => Listvector11ItemModel());
  }

  List<Listdate3ItemModel> fillListdate3ItemList() {
    return List.generate(3, (index) => Listdate3ItemModel());
  }

  _onInitialize(
    AddPlantOneInitialEvent event,
    Emitter<AddPlantOneState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantOneModelObj: state.addPlantOneModelObj?.copyWith(
            listvector11ItemList: fillListvector11ItemList(),
            listdate3ItemList: fillListdate3ItemList())));
  }
}
