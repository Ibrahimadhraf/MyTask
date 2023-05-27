// ignore_for_file: must_be_immutable

part of 'add_plant_ten_bloc.dart';

@immutable
abstract class AddPlantTenEvent extends Equatable {}

class AddPlantTenInitialEvent extends AddPlantTenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AddPlantTenEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends AddPlantTenEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
