part of '../../telegram_js_models.dart';

extension type CloudStorageJSObject._(JSObject _) implements JSObject {
  external CloudStorageJSObject setItem(String key, String value, [JSExportedDartFunction? callback]);

  external CloudStorageJSObject getItem(String key, JSExportedDartFunction callback);

  external CloudStorageJSObject getItems(JSArray<JSString> keys, JSExportedDartFunction callback);

  external CloudStorageJSObject removeItem(String key, [JSExportedDartFunction? callback]);

  external CloudStorageJSObject removeItems(JSArray<JSString> keys, [JSExportedDartFunction? callback]);

  external CloudStorageJSObject getKeys([JSExportedDartFunction callback]);
}
