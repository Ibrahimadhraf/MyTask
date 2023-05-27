import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listvector8_item_model.dart';
import '../models/listdate2_item_model.dart';
import '../models/listvector9_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_four_screen/models/add_plant_four_model.dart';
part 'add_plant_four_event.dart';
part 'add_plant_four_state.dart';

class AddPlantFourBloc extends Bloc<AddPlantFourEvent, AddPlantFourState> {
  AddPlantFourBloc(AddPlantFourState initialState) : super(initialState) {
    on<AddPlantFourInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantFourState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantFourState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listvector8ItemModel> fillListvector8ItemList() {
    return List.generate(4, (index) => Listvector8ItemModel());
  }

  List<Listdate2ItemModel> fillListdate2ItemList() {
    return List.generate(3, (index) => Listdate2ItemModel());
  }

  List<Listvector9ItemModel> fillListvector9ItemList() {
    return List.generate(2, (index) => Listvector9ItemModel());
  }

  _onInitialize(
    AddPlantFourInitialEvent event,
    Emitter<AddPlantFourState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantFourModelObj: state.addPlantFourModelObj?.copyWith(
            listvector8ItemList: fillListvector8ItemList(),
            listdate2ItemList: fillListdate2ItemList(),
            listvector9ItemList: fillListvector9ItemList())));
  }
}
