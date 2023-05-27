// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.rectangletwoController,
    this.rectangletwoController1,
    this.rectangletwoController2,
    this.rectangletwoController3,
    this.signUpModelObj,
  });

  TextEditingController? rectangletwoController;

  TextEditingController? rectangletwoController1;

  TextEditingController? rectangletwoController2;

  TextEditingController? rectangletwoController3;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props => [
        rectangletwoController,
        rectangletwoController1,
        rectangletwoController2,
        rectangletwoController3,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? rectangletwoController,
    TextEditingController? rectangletwoController1,
    TextEditingController? rectangletwoController2,
    TextEditingController? rectangletwoController3,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      rectangletwoController:
          rectangletwoController ?? this.rectangletwoController,
      rectangletwoController1:
          rectangletwoController1 ?? this.rectangletwoController1,
      rectangletwoController2:
          rectangletwoController2 ?? this.rectangletwoController2,
      rectangletwoController3:
          rectangletwoController3 ?? this.rectangletwoController3,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
