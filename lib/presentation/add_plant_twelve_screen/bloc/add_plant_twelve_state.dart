// ignore_for_file: must_be_immutable

part of 'add_plant_twelve_bloc.dart';

class AddPlantTwelveState extends Equatable {
  AddPlantTwelveState({
    this.frame245Controller,
    this.caliperController,
    this.frame245oneController,
    this.radioGroup = "",
    this.addPlantTwelveModelObj,
  });

  TextEditingController? frame245Controller;

  TextEditingController? caliperController;

  TextEditingController? frame245oneController;

  AddPlantTwelveModel? addPlantTwelveModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        frame245Controller,
        caliperController,
        frame245oneController,
        radioGroup,
        addPlantTwelveModelObj,
      ];
  AddPlantTwelveState copyWith({
    TextEditingController? frame245Controller,
    TextEditingController? caliperController,
    TextEditingController? frame245oneController,
    String? radioGroup,
    AddPlantTwelveModel? addPlantTwelveModelObj,
  }) {
    return AddPlantTwelveState(
      frame245Controller: frame245Controller ?? this.frame245Controller,
      caliperController: caliperController ?? this.caliperController,
      frame245oneController:
          frame245oneController ?? this.frame245oneController,
      radioGroup: radioGroup ?? this.radioGroup,
      addPlantTwelveModelObj:
          addPlantTwelveModelObj ?? this.addPlantTwelveModelObj,
    );
  }
}
