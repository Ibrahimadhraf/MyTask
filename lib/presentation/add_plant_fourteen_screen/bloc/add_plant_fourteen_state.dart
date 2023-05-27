// ignore_for_file: must_be_immutable

part of 'add_plant_fourteen_bloc.dart';

class AddPlantFourteenState extends Equatable {
  AddPlantFourteenState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantFourteenModelObj,
  });

  AddPlantFourteenModel? addPlantFourteenModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantFourteenModelObj,
      ];
  AddPlantFourteenState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantFourteenModel? addPlantFourteenModelObj,
  }) {
    return AddPlantFourteenState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantFourteenModelObj:
          addPlantFourteenModelObj ?? this.addPlantFourteenModelObj,
    );
  }
}
