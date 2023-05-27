// ignore_for_file: must_be_immutable

part of 'settings_two_bloc.dart';

class SettingsTwoState extends Equatable {
  SettingsTwoState({this.settingsTwoModelObj});

  SettingsTwoModel? settingsTwoModelObj;

  @override
  List<Object?> get props => [
        settingsTwoModelObj,
      ];
  SettingsTwoState copyWith({SettingsTwoModel? settingsTwoModelObj}) {
    return SettingsTwoState(
      settingsTwoModelObj: settingsTwoModelObj ?? this.settingsTwoModelObj,
    );
  }
}
