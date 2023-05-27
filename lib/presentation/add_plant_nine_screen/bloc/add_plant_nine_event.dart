// ignore_for_file: must_be_immutable

part of 'add_plant_nine_bloc.dart';

@immutable
abstract class AddPlantNineEvent extends Equatable {}

class AddPlantNineInitialEvent extends AddPlantNineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantNineEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantNineEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
