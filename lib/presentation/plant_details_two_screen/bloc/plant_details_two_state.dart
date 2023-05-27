// ignore_for_file: must_be_immutable

part of 'plant_details_two_bloc.dart';

class PlantDetailsTwoState extends Equatable {
  PlantDetailsTwoState({
    this.group152Controller,
    this.plantDetailsTwoModelObj,
  });

  TextEditingController? group152Controller;

  PlantDetailsTwoModel? plantDetailsTwoModelObj;

  @override
  List<Object?> get props => [
        group152Controller,
        plantDetailsTwoModelObj,
      ];
  PlantDetailsTwoState copyWith({
    TextEditingController? group152Controller,
    PlantDetailsTwoModel? plantDetailsTwoModelObj,
  }) {
    return PlantDetailsTwoState(
      group152Controller: group152Controller ?? this.group152Controller,
      plantDetailsTwoModelObj:
          plantDetailsTwoModelObj ?? this.plantDetailsTwoModelObj,
    );
  }
}
