// ignore_for_file: must_be_immutable

part of 'qr_code_scanner_one_one_bloc.dart';

@immutable
abstract class QrCodeScannerOneOneEvent extends Equatable {}

class QrCodeScannerOneOneInitialEvent extends QrCodeScannerOneOneEvent {
  @override
  List<Object?> get props => [];
}
