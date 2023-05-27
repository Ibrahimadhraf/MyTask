// ignore_for_file: must_be_immutable

part of 'add_plant_five_bloc.dart';

@immutable
abstract class AddPlantFiveEvent extends Equatable {}

class AddPlantFiveInitialEvent extends AddPlantFiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantFiveEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantFiveEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
