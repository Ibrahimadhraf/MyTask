// ignore_for_file: must_be_immutable

part of 'add_plant_bloc.dart';

@immutable
abstract class AddPlantEvent extends Equatable {}

class AddPlantInitialEvent extends AddPlantEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends AddPlantEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
