import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listvector2_item_model.dart';
import '../models/listdate_item_model.dart';
import '../models/listvector3_item_model.dart';
import 'package:ebrahim_s_application1/presentation/add_plant_thirteen_screen/models/add_plant_thirteen_model.dart';
part 'add_plant_thirteen_event.dart';
part 'add_plant_thirteen_state.dart';

class AddPlantThirteenBloc
    extends Bloc<AddPlantThirteenEvent, AddPlantThirteenState> {
  AddPlantThirteenBloc(AddPlantThirteenState initialState)
      : super(initialState) {
    on<AddPlantThirteenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AddPlantThirteenState> emit,
  ) {
    emit(state.copyWith(isCheckbox: event.value));
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<AddPlantThirteenState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<Listvector2ItemModel> fillListvector2ItemList() {
    return List.generate(2, (index) => Listvector2ItemModel());
  }

  List<ListdateItemModel> fillListdateItemList() {
    return List.generate(3, (index) => ListdateItemModel());
  }

  List<Listvector3ItemModel> fillListvector3ItemList() {
    return List.generate(4, (index) => Listvector3ItemModel());
  }

  _onInitialize(
    AddPlantThirteenInitialEvent event,
    Emitter<AddPlantThirteenState> emit,
  ) async {
    emit(state.copyWith(isCheckbox: false, radioGroup: ""));
    emit(state.copyWith(
        addPlantThirteenModelObj: state.addPlantThirteenModelObj?.copyWith(
            listvector2ItemList: fillListvector2ItemList(),
            listdateItemList: fillListdateItemList(),
            listvector3ItemList: fillListvector3ItemList())));
  }
}
