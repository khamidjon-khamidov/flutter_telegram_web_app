part of '../../telegram_js_models.dart';

@JS()
class CloudStorage {
  external Future<void> setItem(String key, String value, [callback]);

  external Future<void> getItem(String key, callback);

  external Future<void> getItems(List<String> keys, callback);

  external Future<void> removeItem(String key, [callback]);

  external Future<void> removeItems(List<String> keys, [callback]);

  external Future<void> getKeys([callback]);
}
