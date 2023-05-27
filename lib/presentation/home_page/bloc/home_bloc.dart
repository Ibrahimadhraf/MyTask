import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listrectanglefi_item_model.dart';
import '../models/listlightbulb_item_model.dart';
import 'package:ebrahim_s_application1/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      listrectanglefiItemList: fillListrectanglefiItemList(),
      listlightbulbItemList: fillListlightbulbItemList(),
    )));
  }

  List<ListrectanglefiItemModel> fillListrectanglefiItemList() {
    return List.generate(3, (index) => ListrectanglefiItemModel());
  }

  List<ListlightbulbItemModel> fillListlightbulbItemList() {
    return List.generate(3, (index) => ListlightbulbItemModel());
  }
}
