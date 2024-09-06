part of '../../../telegram_js_models.dart';

@JS()
@anonymous
class StoryShareParams {
  external String? get text;
  external String? get widget_link;

  external factory StoryShareParams({
    required String? text,
    required StoryWidgetLink? widget_link,
  });
}
