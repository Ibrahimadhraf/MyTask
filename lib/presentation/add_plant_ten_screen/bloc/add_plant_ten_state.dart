// ignore_for_file: must_be_immutable

part of 'add_plant_ten_bloc.dart';

class AddPlantTenState extends Equatable {
  AddPlantTenState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantTenModelObj,
  });

  AddPlantTenModel? addPlantTenModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantTenModelObj,
      ];
  AddPlantTenState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantTenModel? addPlantTenModelObj,
  }) {
    return AddPlantTenState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantTenModelObj: addPlantTenModelObj ?? this.addPlantTenModelObj,
    );
  }
}
