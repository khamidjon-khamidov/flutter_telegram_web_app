import 'package:js/js.dart';

///https://core.telegram.org/bots/webapps#hapticfeedback
@JS()
class HapticFeedback {
  external void impactOccurred(style);
  external void notificationOccurred(type);
  external void selectionChanged();
}
