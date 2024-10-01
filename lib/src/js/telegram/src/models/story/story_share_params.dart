part of '../../../telegram_js_models.dart';

@JS('StoryShareParams')
extension type StoryShareParamsJSObject._(JSObject _) implements JSObject {
  external factory StoryShareParamsJSObject({
    required String? text,
    required StoryWidgetLinkJSObject? widget_link,
  });

  external String? get text;

  external String? get widget_link;
}
