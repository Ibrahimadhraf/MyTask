import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframe4_item_model.dart';
import '../models/listvector10_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_eleven_screen/models/add_plant_eleven_model.dart';
part 'add_plant_eleven_event.dart';
part 'add_plant_eleven_state.dart';

class AddPlantElevenBloc
    extends Bloc<AddPlantElevenEvent, AddPlantElevenState> {
  AddPlantElevenBloc(AddPlantElevenState initialState) : super(initialState) {
    on<AddPlantElevenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantElevenState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantElevenState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listframe4ItemModel> fillListframe4ItemList() {
    return List.generate(3, (index) => Listframe4ItemModel());
  }

  List<Listvector10ItemModel> fillListvector10ItemList() {
    return List.generate(4, (index) => Listvector10ItemModel());
  }

  _onInitialize(
    AddPlantElevenInitialEvent event,
    Emitter<AddPlantElevenState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantElevenModelObj: state.addPlantElevenModelObj?.copyWith(
            listframe4ItemList: fillListframe4ItemList(),
            listvector10ItemList: fillListvector10ItemList())));
  }
}
