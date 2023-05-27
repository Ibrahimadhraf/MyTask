// ignore_for_file: must_be_immutable

part of 'plant_details_bloc.dart';

@immutable
abstract class PlantDetailsEvent extends Equatable {}

class PlantDetailsInitialEvent extends PlantDetailsEvent {
  @override
  List<Object?> get props => [];
}
