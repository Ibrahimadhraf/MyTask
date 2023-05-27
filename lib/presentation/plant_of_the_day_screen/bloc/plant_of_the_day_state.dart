// ignore_for_file: must_be_immutable

part of 'plant_of_the_day_bloc.dart';

class PlantOfTheDayState extends Equatable {
  PlantOfTheDayState({
    this.isCheckbox = false,
    this.plantOfTheDayModelObj,
  });

  PlantOfTheDayModel? plantOfTheDayModelObj;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        isCheckbox,
        plantOfTheDayModelObj,
      ];
  PlantOfTheDayState copyWith({
    bool? isCheckbox,
    PlantOfTheDayModel? plantOfTheDayModelObj,
  }) {
    return PlantOfTheDayState(
      isCheckbox: isCheckbox ?? this.isCheckbox,
      plantOfTheDayModelObj:
          plantOfTheDayModelObj ?? this.plantOfTheDayModelObj,
    );
  }
}
