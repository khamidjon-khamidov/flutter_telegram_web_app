import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

import '../../widgets/title_widget.dart';

class BiometricManagerScreen extends StatefulWidget {
  const BiometricManagerScreen({super.key});

  @override
  State<BiometricManagerScreen> createState() => _BiometricManagerScreenState();
}

class _BiometricManagerScreenState extends State<BiometricManagerScreen> {
  late final BiometricManager biometricManager;

  TextEditingController requestAccessReasonController = TextEditingController();
  TextEditingController authenticateReasonController = TextEditingController();
  TextEditingController tokenController = TextEditingController();

  @override
  void initState() {
    biometricManager = TelegramWebApp.instance.biometricManager;
    TelegramWebApp.instance.mainButton.show();
    TelegramWebApp.instance.mainButton.setText("Open Settings");
    TelegramWebApp.instance.mainButton.onClick(() {
      biometricManager.openSettings();
    });
    super.initState();
  }

  @override
  void dispose() {
    requestAccessReasonController.dispose();
    authenticateReasonController.dispose();
    tokenController.dispose();
    TelegramWebApp.instance.mainButton.hide();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Biometric Manager')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              /// **************** isInited ***************
              const TitleWidget('isInited'),
              const SizedBox(height: 8),
              Text(biometricManager.isInited.toString()),
              const SizedBox(height: 12),

              /// **************** isBiometricAvailable ***************
              const TitleWidget('isBiometricAvailable'),
              const SizedBox(height: 8),
              Text(biometricManager.isBiometricAvailable.toString()),
              const SizedBox(height: 12),

              /// **************** biometricType ***************
              const TitleWidget('biometricType'),
              const SizedBox(height: 8),
              Text(biometricManager.biometricType.toString()),
              const SizedBox(height: 12),

              /// **************** isAccessRequested ***************
              const TitleWidget('isAccessRequested'),
              const SizedBox(height: 8),
              Text(biometricManager.isAccessRequested.toString()),
              const SizedBox(height: 12),

              /// **************** isAccessGranted ***************
              const TitleWidget('isAccessGranted'),
              const SizedBox(height: 8),
              Text(biometricManager.isAccessGranted.toString()),
              const SizedBox(height: 12),

              /// **************** isBiometricTokenSaved ***************
              const TitleWidget('isBiometricTokenSaved'),
              const SizedBox(height: 8),
              Text(biometricManager.isBiometricTokenSaved.toString()),
              const SizedBox(height: 12),

              /// **************** deviceId ***************
              const TitleWidget('deviceId'),
              const SizedBox(height: 8),
              Text(biometricManager.deviceId.toString()),
              const SizedBox(height: 12),

              /// **************** init(objectInitialized) ****************
              const TitleWidget('init(objectInitializedCallback)'),
              ElevatedButton(
                  onPressed: () {
                    biometricManager.init(() {
                      showSnackbar("BiometricManager initialized");
                      setState(() {});
                    });
                  },
                  child: const Text('Initialize')),
              const SizedBox(height: 24),
              const Divider(height: 12),

              /// **************** requestAccess(params, onResult) ***************
              const TitleWidget('requestAccess(params, onResult)'),
              const SizedBox(height: 4),
              TextField(
                controller: requestAccessReasonController,
                decoration: const InputDecoration(labelText: 'Request reason'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    biometricManager.requestAccess(
                      BiometricRequestAccessParams(reason: requestAccessReasonController.text),
                      (granted) {
                        showSnackbar("Access granted: $granted");
                        setState(() {});
                      },
                    );
                  },
                  child: const Text('Request Access')),
              const SizedBox(height: 24),
              const Divider(height: 12),

              /// **************** authenticate(params, onResult) ***************
              const TitleWidget('requestAccess(params, onResult)'),
              const SizedBox(height: 4),
              TextField(
                controller: authenticateReasonController,
                decoration: const InputDecoration(labelText: 'Request reason'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    biometricManager.authenticate(
                      BiometricAuthenticateParams(reason: authenticateReasonController.text),
                      (authenticated, token) {
                        showSnackbar("Authenticated: $authenticated, token: $token");
                        setState(() {});
                      },
                    );
                  },
                  child: const Text('Authenticate')),
              const SizedBox(height: 24),
              const Divider(height: 12),

              /// **************** updateBiometrics(token, onResult) ***************
              const TitleWidget('updateBiometrics(token, onResult)'),
              const SizedBox(height: 4),
              TextField(
                controller: tokenController,
                decoration: const InputDecoration(labelText: 'Token'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    biometricManager.updateBiometricToken(
                      tokenController.text,
                      (bool updated) {
                        showSnackbar("Biometrics updated: $updated");
                        setState(() {});
                      },
                    );
                  },
                  child: const Text('Update Biometrics')),
              const SizedBox(height: 24),
              const Divider(height: 12),
            ],
          ),
        ));
  }

  void showSnackbar(String value) {
    var snackBar = SnackBar(content: Text(value));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
