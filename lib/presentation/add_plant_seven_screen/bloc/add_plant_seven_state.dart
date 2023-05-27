// ignore_for_file: must_be_immutable

part of 'add_plant_seven_bloc.dart';

class AddPlantSevenState extends Equatable {
  AddPlantSevenState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.addPlantSevenModelObj,
  });

  AddPlantSevenModel? addPlantSevenModelObj;

  bool isCheckbox;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        radioGroup1,
        addPlantSevenModelObj,
      ];
  AddPlantSevenState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    String? radioGroup1,
    AddPlantSevenModel? addPlantSevenModelObj,
  }) {
    return AddPlantSevenState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      addPlantSevenModelObj:
          addPlantSevenModelObj ?? this.addPlantSevenModelObj,
    );
  }
}
