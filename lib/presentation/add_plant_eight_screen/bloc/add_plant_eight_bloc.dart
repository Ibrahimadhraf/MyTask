import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_eight_screen/models/add_plant_eight_model.dart';
part 'add_plant_eight_event.dart';
part 'add_plant_eight_state.dart';

class AddPlantEightBloc extends Bloc<AddPlantEightEvent, AddPlantEightState> {
  AddPlantEightBloc(AddPlantEightState initialState) : super(initialState) {
    on<AddPlantEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddPlantEightInitialEvent event,
    Emitter<AddPlantEightState> emit,
  ) async {}
}
