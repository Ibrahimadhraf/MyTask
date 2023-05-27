// ignore_for_file: must_be_immutable

part of 'plant_details_bloc.dart';

class PlantDetailsState extends Equatable {
  PlantDetailsState({this.plantDetailsModelObj});

  PlantDetailsModel? plantDetailsModelObj;

  @override
  List<Object?> get props => [
        plantDetailsModelObj,
      ];
  PlantDetailsState copyWith({PlantDetailsModel? plantDetailsModelObj}) {
    return PlantDetailsState(
      plantDetailsModelObj: plantDetailsModelObj ?? this.plantDetailsModelObj,
    );
  }
}
