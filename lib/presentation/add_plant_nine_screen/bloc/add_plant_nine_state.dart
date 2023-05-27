// ignore_for_file: must_be_immutable

part of 'add_plant_nine_bloc.dart';

class AddPlantNineState extends Equatable {
  AddPlantNineState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantNineModelObj,
  });

  AddPlantNineModel? addPlantNineModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantNineModelObj,
      ];
  AddPlantNineState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantNineModel? addPlantNineModelObj,
  }) {
    return AddPlantNineState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantNineModelObj: addPlantNineModelObj ?? this.addPlantNineModelObj,
    );
  }
}
