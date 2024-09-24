part of '../../../telegram_js_models.dart';

@JS('StoryWidgetLink')
extension type StoryWidgetLinkJSObject._(JSObject _) implements JSObject {
  external factory StoryWidgetLinkJSObject({
    required String url,
    required String? name,
  });

  external String get url;
  external String get name;
}
