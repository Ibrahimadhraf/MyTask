import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframe1_item_model.dart';
import '../models/listvector1_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_five_screen/models/add_plant_five_model.dart';
part 'add_plant_five_event.dart';
part 'add_plant_five_state.dart';

class AddPlantFiveBloc extends Bloc<AddPlantFiveEvent, AddPlantFiveState> {
  AddPlantFiveBloc(AddPlantFiveState initialState) : super(initialState) {
    on<AddPlantFiveInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantFiveState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantFiveState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listframe1ItemModel> fillListframe1ItemList() {
    return List.generate(3, (index) => Listframe1ItemModel());
  }

  List<Listvector1ItemModel> fillListvector1ItemList() {
    return List.generate(4, (index) => Listvector1ItemModel());
  }

  _onInitialize(
    AddPlantFiveInitialEvent event,
    Emitter<AddPlantFiveState> emit,
  ) async {
    emit(state.copyWith(
        frame245Controller: TextEditingController(),
        isCheckbox: false,
        radioGroup: ""));
    emit(state.copyWith(
        addPlantFiveModelObj: state.addPlantFiveModelObj?.copyWith(
            listframe1ItemList: fillListframe1ItemList(),
            listvector1ItemList: fillListvector1ItemList())));
  }
}
