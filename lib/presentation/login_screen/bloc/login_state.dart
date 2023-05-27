// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

class LoginState extends Equatable {
  LoginState({
    this.rectangletwoController,
    this.rectangletwoController1,
    this.loginModelObj,
  });

  TextEditingController? rectangletwoController;

  TextEditingController? rectangletwoController1;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        rectangletwoController,
        rectangletwoController1,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? rectangletwoController,
    TextEditingController? rectangletwoController1,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      rectangletwoController:
          rectangletwoController ?? this.rectangletwoController,
      rectangletwoController1:
          rectangletwoController1 ?? this.rectangletwoController1,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
