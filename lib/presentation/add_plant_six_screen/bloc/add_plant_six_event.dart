// ignore_for_file: must_be_immutable

part of 'add_plant_six_bloc.dart';

@immutable
abstract class AddPlantSixEvent extends Equatable {}

class AddPlantSixInitialEvent extends AddPlantSixEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantSixEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantSixEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
