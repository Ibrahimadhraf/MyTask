// ignore_for_file: must_be_immutable

part of 'add_plant_four_bloc.dart';

@immutable
abstract class AddPlantFourEvent extends Equatable {}

class AddPlantFourInitialEvent extends AddPlantFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantFourEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantFourEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
