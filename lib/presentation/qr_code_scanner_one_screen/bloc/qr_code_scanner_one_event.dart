// ignore_for_file: must_be_immutable

part of 'qr_code_scanner_one_bloc.dart';

@immutable
abstract class QrCodeScannerOneEvent extends Equatable {}

class QrCodeScannerOneInitialEvent extends QrCodeScannerOneEvent {
  @override
  List<Object?> get props => [];
}
