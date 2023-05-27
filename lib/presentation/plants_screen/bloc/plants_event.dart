// ignore_for_file: must_be_immutable

part of 'plants_bloc.dart';

@immutable
abstract class PlantsEvent extends Equatable {}

class PlantsInitialEvent extends PlantsEvent {
  @override
  List<Object?> get props => [];
}
