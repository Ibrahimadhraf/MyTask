// ignore_for_file: must_be_immutable

part of 'plant_details_one_bloc.dart';

class PlantDetailsOneState extends Equatable {
  PlantDetailsOneState({this.plantDetailsOneModelObj});

  PlantDetailsOneModel? plantDetailsOneModelObj;

  @override
  List<Object?> get props => [
        plantDetailsOneModelObj,
      ];
  PlantDetailsOneState copyWith(
      {PlantDetailsOneModel? plantDetailsOneModelObj}) {
    return PlantDetailsOneState(
      plantDetailsOneModelObj:
          plantDetailsOneModelObj ?? this.plantDetailsOneModelObj,
    );
  }
}
