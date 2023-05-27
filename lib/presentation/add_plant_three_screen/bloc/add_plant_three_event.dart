// ignore_for_file: must_be_immutable

part of 'add_plant_three_bloc.dart';

@immutable
abstract class AddPlantThreeEvent extends Equatable {}

class AddPlantThreeInitialEvent extends AddPlantThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantThreeEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantThreeEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
