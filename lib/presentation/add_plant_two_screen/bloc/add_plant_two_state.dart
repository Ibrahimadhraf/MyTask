// ignore_for_file: must_be_immutable

part of 'add_plant_two_bloc.dart';

class AddPlantTwoState extends Equatable {
  AddPlantTwoState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantTwoModelObj,
  });

  AddPlantTwoModel? addPlantTwoModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantTwoModelObj,
      ];
  AddPlantTwoState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantTwoModel? addPlantTwoModelObj,
  }) {
    return AddPlantTwoState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantTwoModelObj: addPlantTwoModelObj ?? this.addPlantTwoModelObj,
    );
  }
}
