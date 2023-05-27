// ignore_for_file: must_be_immutable

part of 'add_plant_six_bloc.dart';

class AddPlantSixState extends Equatable {
  AddPlantSixState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantSixModelObj,
  });

  AddPlantSixModel? addPlantSixModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantSixModelObj,
      ];
  AddPlantSixState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantSixModel? addPlantSixModelObj,
  }) {
    return AddPlantSixState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantSixModelObj: addPlantSixModelObj ?? this.addPlantSixModelObj,
    );
  }
}
