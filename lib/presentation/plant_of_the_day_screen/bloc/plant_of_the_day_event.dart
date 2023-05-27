// ignore_for_file: must_be_immutable

part of 'plant_of_the_day_bloc.dart';

@immutable
abstract class PlantOfTheDayEvent extends Equatable {}

class PlantOfTheDayInitialEvent extends PlantOfTheDayEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends PlantOfTheDayEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
