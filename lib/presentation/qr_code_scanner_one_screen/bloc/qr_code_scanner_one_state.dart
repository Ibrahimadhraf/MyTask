// ignore_for_file: must_be_immutable

part of 'qr_code_scanner_one_bloc.dart';

class QrCodeScannerOneState extends Equatable {
  QrCodeScannerOneState({this.qrCodeScannerOneModelObj});

  QrCodeScannerOneModel? qrCodeScannerOneModelObj;

  @override
  List<Object?> get props => [
        qrCodeScannerOneModelObj,
      ];
  QrCodeScannerOneState copyWith(
      {QrCodeScannerOneModel? qrCodeScannerOneModelObj}) {
    return QrCodeScannerOneState(
      qrCodeScannerOneModelObj:
          qrCodeScannerOneModelObj ?? this.qrCodeScannerOneModelObj,
    );
  }
}
