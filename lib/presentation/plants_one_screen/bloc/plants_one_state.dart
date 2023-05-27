// ignore_for_file: must_be_immutable

part of 'plants_one_bloc.dart';

class PlantsOneState extends Equatable {
  PlantsOneState({this.plantsOneModelObj});

  PlantsOneModel? plantsOneModelObj;

  @override
  List<Object?> get props => [
        plantsOneModelObj,
      ];
  PlantsOneState copyWith({PlantsOneModel? plantsOneModelObj}) {
    return PlantsOneState(
      plantsOneModelObj: plantsOneModelObj ?? this.plantsOneModelObj,
    );
  }
}
