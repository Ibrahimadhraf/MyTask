import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/qr_code_scanner_one_one_screen/models/qr_code_scanner_one_one_model.dart';
part 'qr_code_scanner_one_one_event.dart';
part 'qr_code_scanner_one_one_state.dart';

class QrCodeScannerOneOneBloc
    extends Bloc<QrCodeScannerOneOneEvent, QrCodeScannerOneOneState> {
  QrCodeScannerOneOneBloc(QrCodeScannerOneOneState initialState)
      : super(initialState) {
    on<QrCodeScannerOneOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QrCodeScannerOneOneInitialEvent event,
    Emitter<QrCodeScannerOneOneState> emit,
  ) async {}
}
