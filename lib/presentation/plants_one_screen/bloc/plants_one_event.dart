// ignore_for_file: must_be_immutable

part of 'plants_one_bloc.dart';

@immutable
abstract class PlantsOneEvent extends Equatable {}

class PlantsOneInitialEvent extends PlantsOneEvent {
  @override
  List<Object?> get props => [];
}
