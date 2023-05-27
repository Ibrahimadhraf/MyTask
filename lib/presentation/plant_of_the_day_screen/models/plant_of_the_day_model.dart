// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'plant_of_the_item_model.dart';

/// This class defines the variables used in the [plant_of_the_day_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlantOfTheDayModel extends Equatable {
  PlantOfTheDayModel({this.plantOfTheItemList = const []});

  List<PlantOfTheItemModel> plantOfTheItemList;

  PlantOfTheDayModel copyWith({List<PlantOfTheItemModel>? plantOfTheItemList}) {
    return PlantOfTheDayModel(
      plantOfTheItemList: plantOfTheItemList ?? this.plantOfTheItemList,
    );
  }

  @override
  List<Object?> get props => [plantOfTheItemList];
}
