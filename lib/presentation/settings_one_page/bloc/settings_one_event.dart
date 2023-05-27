// ignore_for_file: must_be_immutable

part of 'settings_one_bloc.dart';

@immutable
abstract class SettingsOneEvent extends Equatable {}

class SettingsOneInitialEvent extends SettingsOneEvent {
  @override
  List<Object?> get props => [];
}
