import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_twelve_screen/models/add_plant_twelve_model.dart';
part 'add_plant_twelve_event.dart';
part 'add_plant_twelve_state.dart';

class AddPlantTwelveBloc
    extends Bloc<AddPlantTwelveEvent, AddPlantTwelveState> {
  AddPlantTwelveBloc(AddPlantTwelveState initialState) : super(initialState) {
    on<AddPlantTwelveInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantTwelveState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["lbl_plant_care", "lbl_movement"];
  }

  _onInitialize(
    AddPlantTwelveInitialEvent event,
    Emitter<AddPlantTwelveState> emit,
  ) async {
    emit(state.copyWith(
        frame245Controller: TextEditingController(),
        caliperController: TextEditingController(),
        frame245oneController: TextEditingController(),
        radioGroup: ""));
    emit(state.copyWith(
        addPlantTwelveModelObj: state.addPlantTwelveModelObj
            ?.copyWith(radioList: fillRadioList())));
  }
}
