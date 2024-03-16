import 'package:js/js.dart';

/// https://core.telegram.org/bots/webapps#cloudstorage

@JS()
class CloudStorage {
  external Future<void> setItem(String key, String value, [JsCallback]);

  external Future<void> getItem(String key, [JsCallback]);

  external Future<void> getItems(List<String> keys, [JsCallback]);

  external Future<void> removeItem(String key, [JsCallback]);

  external Future<void> removeItems(List<String> keys, [JsCallback]);

  external Future<void> getKeys([JsCallback]);
}
