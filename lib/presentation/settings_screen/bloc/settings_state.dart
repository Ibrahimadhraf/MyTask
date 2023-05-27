// ignore_for_file: must_be_immutable

part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  SettingsState({
    this.languageController,
    this.languageoneController,
    this.group1000000953Controller,
    this.settingsModelObj,
  });

  TextEditingController? languageController;

  TextEditingController? languageoneController;

  TextEditingController? group1000000953Controller;

  SettingsModel? settingsModelObj;

  @override
  List<Object?> get props => [
        languageController,
        languageoneController,
        group1000000953Controller,
        settingsModelObj,
      ];
  SettingsState copyWith({
    TextEditingController? languageController,
    TextEditingController? languageoneController,
    TextEditingController? group1000000953Controller,
    SettingsModel? settingsModelObj,
  }) {
    return SettingsState(
      languageController: languageController ?? this.languageController,
      languageoneController:
          languageoneController ?? this.languageoneController,
      group1000000953Controller:
          group1000000953Controller ?? this.group1000000953Controller,
      settingsModelObj: settingsModelObj ?? this.settingsModelObj,
    );
  }
}
