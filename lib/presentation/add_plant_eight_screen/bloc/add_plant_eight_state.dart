// ignore_for_file: must_be_immutable

part of 'add_plant_eight_bloc.dart';

class AddPlantEightState extends Equatable {
  AddPlantEightState({this.addPlantEightModelObj});

  AddPlantEightModel? addPlantEightModelObj;

  @override
  List<Object?> get props => [
        addPlantEightModelObj,
      ];
  AddPlantEightState copyWith({AddPlantEightModel? addPlantEightModelObj}) {
    return AddPlantEightState(
      addPlantEightModelObj:
          addPlantEightModelObj ?? this.addPlantEightModelObj,
    );
  }
}
