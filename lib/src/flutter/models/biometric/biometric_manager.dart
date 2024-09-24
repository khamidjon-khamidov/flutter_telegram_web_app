part of '../../../../telegram_web_app.dart';

///  This object controls biometrics on the device.
///  Before the first use of this object, it needs
///  to be initialized using the init method.
class BiometricManager {
  final BiometricManagerJSObject _bm;

  BiometricManager(this._bm);

  /// Bot API 7.2+ Shows whether biometrics object is initialized.
  bool get isInited => _bm.isInited;

  /// Bot API 7.2+ Shows whether biometrics is available on
  /// the current device.
  bool get isBiometricAvailable => _bm.isBiometricAvailable;

  /// Bot API 7.2+ The type of biometrics currently available
  /// on the device. Can be one of these values:
  /// - finger, fingerprint-based biometrics,
  /// - face, face-based biometrics,
  /// - unknown, biometrics of an unknown type.
  String get biometricType => _bm.biometricType;

  /// Bot API 7.2+ Shows whether permission to use biometrics
  /// has been requested.
  bool get isAccessRequested => _bm.isAccessRequested;

  /// Bot API 7.2+ Shows whether permission to use biometrics
  /// has been granted.
  bool get isAccessGranted => _bm.isAccessGranted;

  /// Bot API 7.2+ Shows whether the token is saved in secure
  /// storage on the device.
  bool get isBiometricTokenSaved => _bm.isBiometricTokenSaved;

  /// Bot API 7.2+ A unique device identifier that can be used
  /// to match the token to the device.
  String get deviceId => _bm.deviceId;

  /// Bot API 7.2+ A method that initializes the BiometricManager
  /// object. It should be called before the object's first use.
  /// If an optional callback parameter was passed, the callback
  /// function will be called when the object is initialized.
  BiometricManager init([void Function()? objectInitialized]) {
     _bm.init(objectInitialized?.toJS);
     return this;
  }

  /// Bot API 7.2+ A method that requests permission to use biometrics
  /// according to the params argument of type BiometricRequestAccessParams.
  /// If an optional callback parameter was passed, the callback function
  /// will be called and the first argument will be a boolean indicating
  /// whether the user granted access.
  BiometricManager requestAccess(
    BiometricRequestAccessParams params,
    void Function(bool granted) onResult,
  ) {
    _bm.requestAccess(
      BiometricRequestAccessParamsJSObject(reason: params.reason),
      onResult.toJS,
    );

    return this;
  }

  /// Bot API 7.2+ A method that authenticates the user using biometrics according
  /// to the params argument of type BiometricAuthenticateParams. If an optional
  /// callback parameter was passed, the callback function will be called and the
  /// first argument will be a boolean indicating whether the user authenticated
  /// successfully. If so, the second argument will be a biometric token.
  BiometricManager authenticate(
    BiometricAuthenticateParams params,
    void Function(bool authenticated, String? token) onResult,
  ) {
    _bm.authenticate(
      BiometricAuthenticateParamsJSObject(reason: params.reason),
      onResult.toJS,
    );

    return this;
  }

  /// Bot API 7.2+ A method that updates the biometric token in secure storage
  /// on the device. To remove the token, pass an empty string. If an optional
  /// callback parameter was passed, the callback function will be called and
  /// the first argument will be a boolean indicating whether the token was
  /// updated.
  BiometricManager updateBiometricToken(String token, void Function(bool updated) onResult) {
    _bm.updateBiometricToken(token, onResult.toJS);

    return this;
  }

  /// Bot API 7.2+ A method that opens the biometric access settings for bots.
  /// Useful when you need to request biometrics access to users who haven't
  /// granted it yet.
  ///
  /// Note that this method can be called only in response to user interaction
  /// with the Mini App interface (e.g. a click inside the Mini App or on the
  /// main button)
  BiometricManager openSettings() {
    _bm.openSettings();

    return this;
  }
}
