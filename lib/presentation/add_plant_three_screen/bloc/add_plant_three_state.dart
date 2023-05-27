// ignore_for_file: must_be_immutable

part of 'add_plant_three_bloc.dart';

class AddPlantThreeState extends Equatable {
  AddPlantThreeState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantThreeModelObj,
  });

  AddPlantThreeModel? addPlantThreeModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantThreeModelObj,
      ];
  AddPlantThreeState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantThreeModel? addPlantThreeModelObj,
  }) {
    return AddPlantThreeState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantThreeModelObj:
          addPlantThreeModelObj ?? this.addPlantThreeModelObj,
    );
  }
}
