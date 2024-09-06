part of '../../../../telegram_web_app.dart';

/// This object describes additional sharing settings for the native story editor.
class StoryShareParams {
  /// Optional. The caption to be added to the media, 0-200 characters
  /// for regular users and 0-2048 characters for premium subscribers.
  final String? text;

  /// Optional. An object that describes a widget link to be included
  /// in the story. Note that only premium subscribers can post stories
  /// with links.
  final StoryWidgetLink? widgetLink;

  StoryShareParams({
    required this.text,
    this.widgetLink,
  }) : assert(text == null || text.length <= 2048);
}
