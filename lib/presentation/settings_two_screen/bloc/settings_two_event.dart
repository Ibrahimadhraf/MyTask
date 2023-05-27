// ignore_for_file: must_be_immutable

part of 'settings_two_bloc.dart';

@immutable
abstract class SettingsTwoEvent extends Equatable {}

class SettingsTwoInitialEvent extends SettingsTwoEvent {
  @override
  List<Object?> get props => [];
}
