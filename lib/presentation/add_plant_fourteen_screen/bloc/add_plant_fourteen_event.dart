// ignore_for_file: must_be_immutable

part of 'add_plant_fourteen_bloc.dart';

@immutable
abstract class AddPlantFourteenEvent extends Equatable {}

class AddPlantFourteenInitialEvent extends AddPlantFourteenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantFourteenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantFourteenEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
