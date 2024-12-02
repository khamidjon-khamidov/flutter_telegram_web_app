import 'package:telegram_web_app/telegram_web_app.dart';

class MockLocationManager implements LocationManager {
  bool _isInited = false;

  @override
  Future<LocationData?> getLocation() {
    return Future.value(LocationData(latitude: 49.84, longitude: 24.03));
  }

  @override
  Future<void> init() {
    print('LocationManager initialized');
    _isInited = true;
    return Future.value();
  }

  @override
  bool get isAccessGranted => true;

  @override
  bool get isAccessRequested => true;

  @override
  bool get isInited => _isInited;

  @override
  bool get isLocationAvailable => true;

  @override
  void openSettings() {
    print('LocationManager settings opened');
  }
}
