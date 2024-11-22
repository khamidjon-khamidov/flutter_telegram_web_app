part of '../../../telegram_js_models.dart';

/// **Bot API 8.0+**
///
/// This object controls location access on the device.
/// Before the first use of this object, it needs to be initialized using the init method.
extension type LocationManagerJSObject._(JSObject _) implements JSObject {
  /// Shows whether the LocationManager object has been initialized.
  external bool get isInited;

  /// Shows whether location services are available on the current device.
  external bool get isLocationAvailable;

  /// Shows whether permission to use location has been requested.
  external bool get isAccessRequested;

  /// Shows whether permission to use location has been granted.
  external bool get isAccessGranted;

  /// **Bot API 8.0+**
  /// 
  /// A method that initializes the LocationManager object. 
  /// It should be called before the object's first use. 
  /// If an optional callback parameter is provided, the callback function will be called when the object is initialized.
  external void init([JSExportedDartFunction? callback]);

  /// **Bot API 8.0+**
  /// 
  /// A method that requests location data. 
  /// The callback function will be called with null as the first argument if access to location was not granted, or an object of type [LocationData] as the first argument if access was successful.
  external void getLocation(JSExportedDartFunction callback);

  /// **Bot API 8.0+**
  /// 
  /// A method that opens the location access settings for bots. Useful when you need to request location access from users who haven't granted it yet.
  /// 
  /// _Note that this method can be called only in response to user interaction with the Mini App interface (e.g., a click inside the Mini App or on the main button)._
  external void openSettings();
}
