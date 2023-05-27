// ignore_for_file: must_be_immutable

part of 'add_plant_eight_bloc.dart';

@immutable
abstract class AddPlantEightEvent extends Equatable {}

class AddPlantEightInitialEvent extends AddPlantEightEvent {
  @override
  List<Object?> get props => [];
}
