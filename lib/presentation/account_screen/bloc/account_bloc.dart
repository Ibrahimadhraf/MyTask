import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/widgets/custom_bottom_bar.dart';
import 'package:ebrahim_s_application1/presentation/account_screen/models/account_model.dart';
part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  AccountBloc(AccountState initialState) : super(initialState) {
    on<AccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountInitialEvent event,
    Emitter<AccountState> emit,
  ) async {
    emit(state.copyWith(
        notificationsController: TextEditingController(),
        addressController: TextEditingController(),
        paymentController: TextEditingController(),
        profileController: TextEditingController(),
        signoutController: TextEditingController()));
  }
}
