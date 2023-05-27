// ignore_for_file: must_be_immutable

part of 'add_plant_eleven_bloc.dart';

class AddPlantElevenState extends Equatable {
  AddPlantElevenState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantElevenModelObj,
  });

  AddPlantElevenModel? addPlantElevenModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantElevenModelObj,
      ];
  AddPlantElevenState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantElevenModel? addPlantElevenModelObj,
  }) {
    return AddPlantElevenState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantElevenModelObj:
          addPlantElevenModelObj ?? this.addPlantElevenModelObj,
    );
  }
}
