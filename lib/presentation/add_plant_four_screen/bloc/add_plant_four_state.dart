// ignore_for_file: must_be_immutable

part of 'add_plant_four_bloc.dart';

class AddPlantFourState extends Equatable {
  AddPlantFourState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantFourModelObj,
  });

  AddPlantFourModel? addPlantFourModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantFourModelObj,
      ];
  AddPlantFourState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantFourModel? addPlantFourModelObj,
  }) {
    return AddPlantFourState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantFourModelObj: addPlantFourModelObj ?? this.addPlantFourModelObj,
    );
  }
}
