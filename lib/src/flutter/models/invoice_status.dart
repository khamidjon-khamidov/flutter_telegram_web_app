part of '../../../telegram_web_app.dart';

enum InvoiceStatus {
  /// invoice was paid successfully
  paid,

  /// user closed this invoice without paying
  cancelled,

  /// user tried to pay, but the payment was failed
  failed,

  /// the payment is still processing. The bot will receive a service message
  /// about a successful payment when the payment is successfully paid.
  pending;
}
