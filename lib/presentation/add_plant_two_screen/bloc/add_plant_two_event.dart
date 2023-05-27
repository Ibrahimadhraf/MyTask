// ignore_for_file: must_be_immutable

part of 'add_plant_two_bloc.dart';

@immutable
abstract class AddPlantTwoEvent extends Equatable {}

class AddPlantTwoInitialEvent extends AddPlantTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantTwoEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
