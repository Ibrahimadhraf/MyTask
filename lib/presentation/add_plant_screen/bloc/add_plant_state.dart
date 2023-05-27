// ignore_for_file: must_be_immutable

part of 'add_plant_bloc.dart';

class AddPlantState extends Equatable {
  AddPlantState({
    this.isCheckbox = false,
    this.isCheckbox1 = false,
    this.addPlantModelObj,
  });

  AddPlantModel? addPlantModelObj;

  bool isCheckbox;

  bool isCheckbox1;

  @override
  List<Object?> get props => [
        isCheckbox,
        isCheckbox1,
        addPlantModelObj,
      ];
  AddPlantState copyWith({
    bool? isCheckbox,
    bool? isCheckbox1,
    AddPlantModel? addPlantModelObj,
  }) {
    return AddPlantState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      isCheckbox1: isCheckbox1 ?? this.isCheckbox1,
      addPlantModelObj: addPlantModelObj ?? this.addPlantModelObj,
    );
  }
}
