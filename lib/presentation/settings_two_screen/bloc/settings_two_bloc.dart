import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/settings_two_screen/models/settings_two_model.dart';
part 'settings_two_event.dart';
part 'settings_two_state.dart';

class SettingsTwoBloc extends Bloc<SettingsTwoEvent, SettingsTwoState> {
  SettingsTwoBloc(SettingsTwoState initialState) : super(initialState) {
    on<SettingsTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsTwoInitialEvent event,
    Emitter<SettingsTwoState> emit,
  ) async {}
}
