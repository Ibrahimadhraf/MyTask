// ignore_for_file: must_be_immutable

part of 'add_plant_eleven_bloc.dart';

@immutable
abstract class AddPlantElevenEvent extends Equatable {}

class AddPlantElevenInitialEvent extends AddPlantElevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantElevenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantElevenEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
