import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listvector5_item_model.dart';
import '../models/listdate1_item_model.dart';
import '../models/listvector6_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_two_screen/models/add_plant_two_model.dart';
part 'add_plant_two_event.dart';
part 'add_plant_two_state.dart';

class AddPlantTwoBloc extends Bloc<AddPlantTwoEvent, AddPlantTwoState> {
  AddPlantTwoBloc(AddPlantTwoState initialState) : super(initialState) {
    on<AddPlantTwoInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantTwoState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantTwoState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listvector5ItemModel> fillListvector5ItemList() {
    return List.generate(3, (index) => Listvector5ItemModel());
  }

  List<Listdate1ItemModel> fillListdate1ItemList() {
    return List.generate(3, (index) => Listdate1ItemModel());
  }

  List<Listvector6ItemModel> fillListvector6ItemList() {
    return List.generate(3, (index) => Listvector6ItemModel());
  }

  _onInitialize(
    AddPlantTwoInitialEvent event,
    Emitter<AddPlantTwoState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantTwoModelObj: state.addPlantTwoModelObj?.copyWith(
            listvector5ItemList: fillListvector5ItemList(),
            listdate1ItemList: fillListdate1ItemList(),
            listvector6ItemList: fillListvector6ItemList())));
  }
}
