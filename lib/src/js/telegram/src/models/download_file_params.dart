part of '../../telegram_js_models.dart';

@JS('DownloadFileParams')
extension type DownloadFileParamsJSObject._(JSObject _) implements JSObject {
  external factory DownloadFileParamsJSObject({
    required String url,
    required String file_name,
  });

  external String get url;

  external String get file_name;
}
