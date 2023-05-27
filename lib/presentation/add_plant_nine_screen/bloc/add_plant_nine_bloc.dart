import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listframe_item_model.dart';
import '../models/listvector_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_nine_screen/models/add_plant_nine_model.dart';
part 'add_plant_nine_event.dart';
part 'add_plant_nine_state.dart';

class AddPlantNineBloc extends Bloc<AddPlantNineEvent, AddPlantNineState> {
  AddPlantNineBloc(AddPlantNineState initialState) : super(initialState) {
    on<AddPlantNineInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantNineState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantNineState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<ListframeItemModel> fillListframeItemList() {
    return List.generate(3, (index) => ListframeItemModel());
  }

  List<ListvectorItemModel> fillListvectorItemList() {
    return List.generate(5, (index) => ListvectorItemModel());
  }

  _onInitialize(
    AddPlantNineInitialEvent event,
    Emitter<AddPlantNineState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantNineModelObj: state.addPlantNineModelObj?.copyWith(
            listframeItemList: fillListframeItemList(),
            listvectorItemList: fillListvectorItemList())));
  }
}
