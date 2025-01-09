part of '../../../telegram_web_app.dart';

/// Occurs when the visible section of the Mini App is changed.
/// eventHandler receives an object with the single field isStateStable. If isStateStable is
/// true, the resizing of the Mini App is finished. If it is false, the resizing is ongoing (the
/// user is expanding or collapsing the Mini App or an animated object is playing). The
/// current value of the visible section’s height is available in this.viewportHeight.
class ViewportChangedEvent extends TelegramEvent {
  ViewportChangedEvent(void Function(ViewportChangedPayload payload) eventHandler)
      : super(TelegramEventType.viewportChanged, eventHandler);
}

class ViewportChangedPayload {
  final bool isStateStable;

  ViewportChangedPayload(this.isStateStable);
}
