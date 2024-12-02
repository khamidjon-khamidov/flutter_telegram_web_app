part of '../../../../telegram_web_app.dart';

/// **Bot API 8.0+**
///
/// This object controls location access on the device.
/// Before the first use of this object, it needs to be initialized using the init method.
class LocationManager {
  final LocationManagerJSObject _lm;
  LocationManager(this._lm);

  /// Shows whether the LocationManager object has been initialized.
  bool get isInited => _lm.isInited;

  /// Shows whether location services are available on the current device.
  bool get isLocationAvailable => _lm.isLocationAvailable;

  /// Shows whether permission to use location has been requested.
  bool get isAccessRequested => _lm.isAccessRequested;

  /// Shows whether permission to use location has been granted.
  bool get isAccessGranted => _lm.isAccessGranted;

  /// **Bot API 8.0+**
  ///
  /// A method that initializes the LocationManager object.
  /// It should be called before the object's first use.
  /// If an optional callback parameter is provided, the callback function will be called when the object is initialized.
  Future<void> init() {
    final completer = Completer<void>();
    
    _lm.init(() {
      completer.complete();
    }.toJS);

    return completer.future;
  }

  /// **Bot API 8.0+**
  ///
  /// A method that requests location data.
  /// The callback function will be called with null as the first argument if access to location was not granted, or an object of type [LocationData] as the first argument if access was successful.
  Future<LocationData?> getLocation() async {
    final completer = Completer<LocationData?>();

    _lm.getLocation((LocationDataJSObject? data) {
      completer.complete(data == null ? null : LocationData.from(data));
    }.toJS);

    return completer.future;
  }

  /// **Bot API 8.0+**
  ///
  /// A method that opens the location access settings for bots. Useful when you need to request location access from users who haven't granted it yet.
  ///
  /// _Note that this method can be called only in response to user interaction with the Mini App interface (e.g., a click inside the Mini App or on the main button)._
  void openSettings() {
    _lm.openSettings();
  }
}
