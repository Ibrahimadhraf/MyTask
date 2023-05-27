import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_screen/models/add_plant_model.dart';
part 'add_plant_event.dart';
part 'add_plant_state.dart';

class AddPlantBloc extends Bloc<AddPlantEvent, AddPlantState> {
  AddPlantBloc(AddPlantState initialState) : super(initialState) {
    on<AddPlantInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<AddPlantState> emit,
  ) {
    emit(state.copyWith(isCheckbox1: event.value));
  }

  _onInitialize(
    AddPlantInitialEvent event,
    Emitter<AddPlantState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, isCheckbox1: false));
  }
}
