// ignore_for_file: must_be_immutable

part of 'account_bloc.dart';

class AccountState extends Equatable {
  AccountState({
    this.notificationsController,
    this.addressController,
    this.paymentController,
    this.profileController,
    this.signoutController,
    this.accountModelObj,
  });

  TextEditingController? notificationsController;

  TextEditingController? addressController;

  TextEditingController? paymentController;

  TextEditingController? profileController;

  TextEditingController? signoutController;

  AccountModel? accountModelObj;

  @override
  List<Object?> get props => [
        notificationsController,
        addressController,
        paymentController,
        profileController,
        signoutController,
        accountModelObj,
      ];
  AccountState copyWith({
    TextEditingController? notificationsController,
    TextEditingController? addressController,
    TextEditingController? paymentController,
    TextEditingController? profileController,
    TextEditingController? signoutController,
    AccountModel? accountModelObj,
  }) {
    return AccountState(
      notificationsController:
          notificationsController ?? this.notificationsController,
      addressController: addressController ?? this.addressController,
      paymentController: paymentController ?? this.paymentController,
      profileController: profileController ?? this.profileController,
      signoutController: signoutController ?? this.signoutController,
      accountModelObj: accountModelObj ?? this.accountModelObj,
    );
  }
}
