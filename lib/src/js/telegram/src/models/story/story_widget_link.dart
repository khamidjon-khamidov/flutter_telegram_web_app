part of '../../../telegram_js_models.dart';

@JS()
@anonymous
class StoryWidgetLink {
  external String get url;
  external String get name;

  external factory StoryWidgetLink({
    required String url,
    required String? name,
  });
}
