part of '../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// Occurs after checking the home screen status.
/// eventHandler receives an object with the field status, which is a string
/// indicating the current home screen status. Possible values for status are:
/// - unsupported – the feature is not supported, and it is not possible to add the icon to the home screen,
/// - unknown – the feature is supported, and the icon can be added, but it is not possible to determine if the icon has already been added,
/// - added – the icon has already been added to the home screen,
/// - missed – the icon has not been added to the home screen.
class HomeScreenCheckedEvent extends TelegramEvent {
  HomeScreenCheckedEvent(void Function(String status) eventHandler)
      : super(TelegramEventType.homeScreenChecked, eventHandler);
}
