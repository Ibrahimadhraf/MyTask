// ignore_for_file: must_be_immutable

part of 'add_plant_twelve_bloc.dart';

@immutable
abstract class AddPlantTwelveEvent extends Equatable {}

class AddPlantTwelveInitialEvent extends AddPlantTwelveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantTwelveEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
