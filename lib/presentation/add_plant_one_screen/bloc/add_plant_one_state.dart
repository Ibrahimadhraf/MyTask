// ignore_for_file: must_be_immutable

part of 'add_plant_one_bloc.dart';

class AddPlantOneState extends Equatable {
  AddPlantOneState({
    this.isCheckbox = false,
    this.radioGroup = "",
    this.addPlantOneModelObj,
  });

  AddPlantOneModel? addPlantOneModelObj;

  bool isCheckbox;

  String radioGroup;

  @override
  List<Object?> get props => [
        isCheckbox,
        radioGroup,
        addPlantOneModelObj,
      ];
  AddPlantOneState copyWith({
    bool? isCheckbox,
    String? radioGroup,
    AddPlantOneModel? addPlantOneModelObj,
  }) {
    return AddPlantOneState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantOneModelObj: addPlantOneModelObj ?? this.addPlantOneModelObj,
    );
  }
}
