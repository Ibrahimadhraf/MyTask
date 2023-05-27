// ignore_for_file: must_be_immutable

part of 'forget_password_bloc.dart';

@immutable
abstract class ForgetPasswordEvent extends Equatable {}

class ForgetPasswordInitialEvent extends ForgetPasswordEvent {
  @override
  List<Object?> get props => [];
}
