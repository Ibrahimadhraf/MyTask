// ignore_for_file: must_be_immutable

part of 'plant_details_one_bloc.dart';

@immutable
abstract class PlantDetailsOneEvent extends Equatable {}

class PlantDetailsOneInitialEvent extends PlantDetailsOneEvent {
  @override
  List<Object?> get props => [];
}
