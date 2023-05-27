import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframe6_item_model.dart';
import '../models/listvector14_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_seven_screen/models/add_plant_seven_model.dart';
part 'add_plant_seven_event.dart';
part 'add_plant_seven_state.dart';

class AddPlantSevenBloc extends Bloc<AddPlantSevenEvent, AddPlantSevenState> {
  AddPlantSevenBloc(AddPlantSevenState initialState) : super(initialState) {
    on<AddPlantSevenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantSevenState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantSevenState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<AddPlantSevenState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  List<Listframe6ItemModel> fillListframe6ItemList() {
    return List.generate(3, (index) => Listframe6ItemModel());
  }

  List<Listvector14ItemModel> fillListvector14ItemList() {
    return List.generate(4, (index) => Listvector14ItemModel());
  }

  _onInitialize(
    AddPlantSevenInitialEvent event,
    Emitter<AddPlantSevenState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: "", radioGroup1: ""));
    emit(state.copyWith(
        addPlantSevenModelObj: state.addPlantSevenModelObj?.copyWith(
            listframe6ItemList: fillListframe6ItemList(),
            listvector14ItemList: fillListvector14ItemList())));
  }
}
