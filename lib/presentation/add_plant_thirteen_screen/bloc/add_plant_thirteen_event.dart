// ignore_for_file: must_be_immutable

part of 'add_plant_thirteen_bloc.dart';

@immutable
abstract class AddPlantThirteenEvent extends Equatable {}

class AddPlantThirteenInitialEvent extends AddPlantThirteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantThirteenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantThirteenEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
