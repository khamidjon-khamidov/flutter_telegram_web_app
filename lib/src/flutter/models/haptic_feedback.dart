part of '../../../telegram_web_app.dart';

///https://core.telegram.org/bots/webapps#hapticfeedback
class HapticFeedback {
  static HapticFeedback? _instance;

  static HapticFeedback get instance => _instance ??= HapticFeedback();

  /// A method tells that an impact occurred. The Telegram app may play
  /// the appropriate haptics based on style value passed
  void impactOccurred(HapticFeedbackImpact impact) => Telegram.WebApp.HapticFeedback.impactOccurred(impact.name);

  /// A method tells that a task or action has succeeded, failed, or produced a warning.
  /// The Telegram app may play the appropriate haptics based on type value passed.
  void notificationOccurred(HapticFeedbackNotificationType type) =>
      Telegram.WebApp.HapticFeedback.notificationOccurred(type.name);

  /// A method tells that the user has changed a selection. The Telegram app may play
  /// the appropriate haptics.
  /// Warning!!! Do not use this feedback when the user makes or confirms a selection;
  ///            use it only when the selection changes.
  void selectionChanged() => Telegram.WebApp.HapticFeedback.selectionChanged();
}

enum HapticFeedbackImpact {
  /// indicates a collision between small or lightweight UI objects,
  light,

  /// indicates a collision between medium-sized or medium-weight UI objects,
  medium,

  /// indicates a collision between large or heavyweight UI objects,
  heavy,

  /// indicates a collision between hard or inflexible UI objects
  rigid,

  /// indicates a collision between soft or flexible UI objects.
  soft,
}

enum HapticFeedbackNotificationType {
  /// indicates that a task or action has failed
  error,

  /// indicates that a task or action has completed successfully
  success,

  /// indicates that a task or action produced a warning
  warning,
}
