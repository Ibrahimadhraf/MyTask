import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/settings_one_page/models/settings_one_model.dart';
part 'settings_one_event.dart';
part 'settings_one_state.dart';

class SettingsOneBloc extends Bloc<SettingsOneEvent, SettingsOneState> {
  SettingsOneBloc(SettingsOneState initialState) : super(initialState) {
    on<SettingsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SettingsOneInitialEvent event,
    Emitter<SettingsOneState> emit,
  ) async {}
}
