// ignore_for_file: must_be_immutable

part of 'add_plant_seven_bloc.dart';

@immutable
abstract class AddPlantSevenEvent extends Equatable {}

class AddPlantSevenInitialEvent extends AddPlantSevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantSevenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantSevenEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends AddPlantSevenEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
