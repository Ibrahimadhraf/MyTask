// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [add_plant_twelve_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPlantTwelveModel extends Equatable {
  AddPlantTwelveModel({this.radioList = const []});

  List<String> radioList;

  AddPlantTwelveModel copyWith({List<String>? radioList}) {
    return AddPlantTwelveModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
