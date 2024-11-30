part of '../../telegram_js_models.dart';

/// This object describes additional settings for setting an emoji status.
@JS('EmojiStatusParams')
extension type EmojiStatusParamsJSObject._(JSObject _) implements JSObject {
  external factory EmojiStatusParamsJSObject({int? duration});

  /// The duration for which the status will remain set, in seconds.
  external int? get duration;
}