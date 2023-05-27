// ignore_for_file: must_be_immutable

part of 'add_plant_five_bloc.dart';

class AddPlantFiveState extends Equatable {
  AddPlantFiveState({
    this.frame245Controller,
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantFiveModelObj,
  });

  TextEditingController? frame245Controller;

  AddPlantFiveModel? addPlantFiveModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        frame245Controller,
        isCheckbox,
        radioGroup,
        addPlantFiveModelObj,
      ];
  AddPlantFiveState copyWith({
    TextEditingController? frame245Controller,
    bool? isCheckbox,
    String? radioGroup,
    AddPlantFiveModel? addPlantFiveModelObj,
  }) {
    return AddPlantFiveState(
      frame245Controller: frame245Controller ?? this.frame245Controller,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantFiveModelObj: addPlantFiveModelObj ?? this.addPlantFiveModelObj,
    );
  }
}
