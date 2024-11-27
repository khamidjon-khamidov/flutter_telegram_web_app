import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:example/widgets/expandable_tile.dart';
import 'package:example/widgets/list_button.dart';
import 'package:example/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class LocationManagerScreen extends StatefulWidget {
  const LocationManagerScreen({super.key});

  @override
  State<LocationManagerScreen> createState() => _LocationManagerScreenState();
}

class _LocationManagerScreenState extends State<LocationManagerScreen> {
  late final LocationManager locationManager;

  LocationData? _location;

  @override
  void initState() {
    super.initState();

    locationManager = TelegramWebApp.instance.locationManager;

    TelegramWebApp.instance.mainButton.show();
    TelegramWebApp.instance.mainButton.setText("Open Settings");
    TelegramWebApp.instance.mainButton.onClick(() {
      locationManager.openSettings();
    });

    initEvents();
  }

  @override
  void dispose() {
    stopEvents();
    super.dispose();
  }

  void initEvents() {
    TelegramWebApp.instance
        .onEvent(LocationManagerUpdatedEvent(locationManagerUpdated));
    TelegramWebApp.instance.onEvent(LocationRequestedEvent(locationRequested));
  }

  void stopEvents() {
    TelegramWebApp.instance.offEvent(LocationManagerUpdatedEvent(locationManagerUpdated));
    TelegramWebApp.instance.offEvent(LocationRequestedEvent(locationRequested));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Location Manager')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const TitleWidget('isInited'),
                  const SizedBox(width: 8),
                  Text(locationManager.isInited.toString()),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const TitleWidget('isLocationAvailable'),
                  const SizedBox(width: 8),
                  Text(locationManager.isLocationAvailable.toString()),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const TitleWidget('isAccessRequested'),
                  const SizedBox(width: 8),
                  Text(locationManager.isAccessRequested.toString()),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const TitleWidget('isAccessGranted'),
                  const SizedBox(width: 8),
                  Text(locationManager.isAccessGranted.toString()),
                ],
              ),
              ListButton('init()', onPress: () async {
                await locationManager.init();
                setState(() {});
              }),
              ListButton('getLocation()', onPress: () async {
                final location = await locationManager.getLocation();
                setState(() => _location = location);
              }),
              InfoExpandableTile(
                'Location Data',
                _location.toString(),
                expanded: true,
              ),
            ],
          ),
        ));
  }

  void locationManagerUpdated() {
    'locationManagerUpdated'.showSnackbar(context);
  }

  void locationRequested(LocationData? locationData) {
    'locationRequested: $locationData'.showSnackbar(context);
  }
}
