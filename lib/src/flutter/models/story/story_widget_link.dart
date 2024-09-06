part of '../../../../telegram_web_app.dart';

/// This object describes a widget link to be included in the story.
class StoryWidgetLink {
  /// The URL to be included in the story.
  final String url;

  /// Optional. The name to be displayed for the widget link, 0-48 characters.
  final String? name;

  StoryWidgetLink({
    required this.url,
    this.name,
  });
}
