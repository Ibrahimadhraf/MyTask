import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ebrahim_s_application1/presentation/qr_code_scanner_one_screen/models/qr_code_scanner_one_model.dart';
part 'qr_code_scanner_one_event.dart';
part 'qr_code_scanner_one_state.dart';

class QrCodeScannerOneBloc
    extends Bloc<QrCodeScannerOneEvent, QrCodeScannerOneState> {
  QrCodeScannerOneBloc(QrCodeScannerOneState initialState)
      : super(initialState) {
    on<QrCodeScannerOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QrCodeScannerOneInitialEvent event,
    Emitter<QrCodeScannerOneState> emit,
  ) async {}
}
