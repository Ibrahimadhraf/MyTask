// ignore_for_file: must_be_immutable

part of 'plants_bloc.dart';

class PlantsState extends Equatable {
  PlantsState({this.plantsModelObj});

  PlantsModel? plantsModelObj;

  @override
  List<Object?> get props => [
        plantsModelObj,
      ];
  PlantsState copyWith({PlantsModel? plantsModelObj}) {
    return PlantsState(
      plantsModelObj: plantsModelObj ?? this.plantsModelObj,
    );
  }
}
