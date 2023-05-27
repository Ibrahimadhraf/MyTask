// ignore_for_file: must_be_immutable

part of 'add_plant_thirteen_bloc.dart';

class AddPlantThirteenState extends Equatable {
  AddPlantThirteenState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantThirteenModelObj,
  });

  AddPlantThirteenModel? addPlantThirteenModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantThirteenModelObj,
      ];
  AddPlantThirteenState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantThirteenModel? addPlantThirteenModelObj,
  }) {
    return AddPlantThirteenState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantThirteenModelObj:
          addPlantThirteenModelObj ?? this.addPlantThirteenModelObj,
    );
  }
}
