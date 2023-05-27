import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/presentation/plant_details_one_screen/models/plant_details_one_model.dart';
part 'plant_details_one_event.dart';
part 'plant_details_one_state.dart';

class PlantDetailsOneBloc
    extends Bloc<PlantDetailsOneEvent, PlantDetailsOneState> {
  PlantDetailsOneBloc(PlantDetailsOneState initialState) : super(initialState) {
    on<PlantDetailsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlantDetailsOneInitialEvent event,
    Emitter<PlantDetailsOneState> emit,
  ) async {}
}
