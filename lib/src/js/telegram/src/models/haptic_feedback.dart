part of '../../telegram_js_models.dart';

@JS()
class HapticFeedback {
  external void impactOccurred(style);
  external void notificationOccurred(type);
  external void selectionChanged();
}
