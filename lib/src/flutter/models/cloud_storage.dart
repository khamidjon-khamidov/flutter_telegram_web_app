part of '../../../telegram_web_app.dart';

/// https://core.telegram.org/bots/webapps#cloudstorage
class CloudStorage {
  static CloudStorage? _instance;

  static CloudStorage get instance => _instance ??= CloudStorage();

  /// A method that stores a value in the cloud storage using the specified key.
  /// You can store up to 1024 keys in the cloud storage
  /// [key] should contain 1-128 characters, only A-Z, a-z, 0-9, _ and - are allowed
  /// [value] should contain 0-4096 characters.
  /// If an optional [eventHandler] parameter was passed, the callback function will be called.
  /// In case of an [error], the first argument will contain the error.
  /// In case of [success], the first argument will be null and the second argument will
  /// be a boolean indicating whether the value was stored.
  CloudStorage setItem(String key, String value, [void Function(String? error, [bool? isStored])? callback]) {
    Telegram.WebApp.CloudStorage.setItem(key, value, callback?.toJS);

    return this;
  }

  /// A method that receives a value from the cloud storage using the specified key.
  /// [key] should contain 1-128 characters, only A-Z, a-z, 0-9, _ and - are allowed
  ///  In case of an [error], the callback function will be called and the first argument
  ///  will contain the error. In case of [success], the first argument will be null and
  ///  the value will be passed as the second argument.
  CloudStorage getItem(String key, void Function(String? error, [String? result]) callback) {
    Telegram.WebApp.CloudStorage.getItem(key, callback.toJS);

    return this;
  }

  /// A method that receives values from the cloud storage using the specified keys.
  /// [keys] should contain 1-128 characters, only A-Z, a-z, 0-9, _ and - are allowed.
  /// In case of an [error], the callback function will be called and the first argument
  /// will contain the error. In case of [success], the first argument will be null
  /// and the values will be passed as the second argument.
  CloudStorage getItems(List<String> keys, void Function(String? error, [List<String>? values]) callback)  {
     Telegram.WebApp.CloudStorage
        .getItems(
          keys.map((e) => e.toJS).toList().toJS,
          (JSString? error, JSArray<JSString>? values) {
            callback(error?.toDart, values?.toDart.map((e) => e.toDart).toList());
          }.toJS,
        );

     return this;
  }

  /// A method that removes a value from the cloud storage using the specified key.
  /// [key] should contain 1-128 characters, only A-Z, a-z, 0-9, _ and - are allowed.
  /// If an optional [eventHandler] parameter was passed, the callback function will be called.
  /// In case of an [error], the first argument will contain the error. In case of [success],
  /// the first argument will be null and the second argument will be a boolean indicating
  /// whether the value was removed.
  CloudStorage removeItem(String key, [void Function(String? error, [bool? removed])? callback]) {
    Telegram.WebApp.CloudStorage.removeItem(key, callback?.toJS);

    return this;
  }

  /// A method that removes values from the cloud storage using the specified keys.
  /// [keys] should contain 1-128 characters, only A-Z, a-z, 0-9, _ and - are allowed.
  /// If an optional [eventHandler] parameter was passed, the callback function will be called.
  /// In case of an [error], the first argument will contain the error. In case of [success],
  /// the first argument will be null and the second argument will be a boolean indicating
  /// whether the values were removed.
  CloudStorage removeItems(List<String> keys, [void Function(String? error, [bool? removed])? callback]) {
    Telegram.WebApp.CloudStorage.removeItems(keys.map((e) => e.toJS).toList().toJS, callback?.toJS);

    return this;
  }

  /// A method that receives the list of all keys stored in the cloud storage.
  /// In case of an [error], the callback function will be called and the first argument will contain
  /// the error. In case of [success], the first argument will be null and the list of keys will be
  /// passed as the second argument.
  CloudStorage getKeys(void Function(String? error, [List<String>? keys]) callback)  {
     Telegram.WebApp.CloudStorage
        .getKeys(
          (JSString? error, JSArray<JSString>? keys) {
            callback(error?.toDart, keys?.toDart.map((e) => e.toDart).toList());
          }.toJS,
        );

     return this;
  }
}
