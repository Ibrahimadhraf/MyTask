// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listrectanglefi_item_model.dart';
import 'listlightbulb_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.listrectanglefiItemList = const [],
    this.listlightbulbItemList = const [],
  });

  List<ListrectanglefiItemModel> listrectanglefiItemList;

  List<ListlightbulbItemModel> listlightbulbItemList;

  HomeModel copyWith({
    List<ListrectanglefiItemModel>? listrectanglefiItemList,
    List<ListlightbulbItemModel>? listlightbulbItemList,
  }) {
    return HomeModel(
      listrectanglefiItemList:
          listrectanglefiItemList ?? this.listrectanglefiItemList,
      listlightbulbItemList:
          listlightbulbItemList ?? this.listlightbulbItemList,
    );
  }

  @override
  List<Object?> get props => [listrectanglefiItemList, listlightbulbItemList];
}
