import 'package:example/screens/buttons/back_button_screen.dart';
import 'package:example/screens/buttons/main_button_screen.dart';
import 'package:example/widgets/expandable_tile.dart';
import 'package:example/widgets/list_button.dart';
import 'package:example/widgets/one_color_widget.dart';
import 'package:example/widgets/theme_params_widget.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TelegramWebApp telegram = TelegramWebApp.instance;

  @override
  void initState() {
    super.initState();
    TelegramWebApp.instance.ready();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          InfoExpandableTile('Init Data', telegram.initData),
          InfoExpandableTile(
            'Init Data Unsafe',
            telegram.initDataUnsafe.toReadableString(),
          ),
          InfoExpandableTile('Version', telegram.version),
          InfoExpandableTile('Platform', telegram.platform),
          InfoExpandableTile('Color Scheme', telegram.colorScheme.name),
          ThemeParamsWidget(telegram.themeParams),
          InfoExpandableTile('isExpanded', telegram.isExpanded.toString()),
          InfoExpandableTile('viewportHeight', telegram.viewportHeight.toString()),
          InfoExpandableTile('viewportStableHeight', telegram.viewportStableHeight.toString()),
          OneColorExpandableTile('headerColor', telegram.headerColor),
          OneColorExpandableTile('backgroundColor', telegram.backgroundColor),
          InfoExpandableTile(
              'isClosingConfirmationEnabled', telegram.isClosingConfirmationEnabled.toString()),
          ListButton(
            'MainButton',
            onPress: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const MainButtonScreen()));
            },
          ),
          ListButton(
            'BackButton',
            onPress: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const BackButtonScreen()));
            },
          ),
        ],
      ),
    );
  }
}

/// BackButton
/// MainButton
/// SettingsButton
/// HapticFeedback
/// CloudStorage
/// isVersionAtLeast(version)
/// setHeaderColor(color)
/// setBackgroundColor(color)
/// enableClosingConfirmation()
/// disableClosingConfirmation()
/// onEvent(eventType, eventHandler)
/// offEvent(eventType, eventHandler)
/// sendData(data)
/// switchInlineQuery(query[, choose_chat_types])
/// openLink(url[, options])
/// openTelegramLink(url)
/// openInvoice(url[, callback])
/// showPopup(params[, callback])
/// showAlert(message[, callback])
/// showConfirm(message[, callback])
/// showScanQrPopup(params[, callback])
/// closeScanQrPopup()
/// readTextFromClipboard([callback])
/// requestWriteAccess([callback])
/// requestContact([callback])
/// ready()
/// expand()
/// close()
