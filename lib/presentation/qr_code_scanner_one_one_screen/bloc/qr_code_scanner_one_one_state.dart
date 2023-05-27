// ignore_for_file: must_be_immutable

part of 'qr_code_scanner_one_one_bloc.dart';

class QrCodeScannerOneOneState extends Equatable {
  QrCodeScannerOneOneState({this.qrCodeScannerOneOneModelObj});

  QrCodeScannerOneOneModel? qrCodeScannerOneOneModelObj;

  @override
  List<Object?> get props => [
        qrCodeScannerOneOneModelObj,
      ];
  QrCodeScannerOneOneState copyWith(
      {QrCodeScannerOneOneModel? qrCodeScannerOneOneModelObj}) {
    return QrCodeScannerOneOneState(
      qrCodeScannerOneOneModelObj:
          qrCodeScannerOneOneModelObj ?? this.qrCodeScannerOneOneModelObj,
    );
  }
}
