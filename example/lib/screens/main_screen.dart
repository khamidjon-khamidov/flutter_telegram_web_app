import 'package:example/widgets/expandable_tile.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Telegram Web App')),
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
          InfoExpandableTile('Color Scheme', telegram.colorScheme.name),
          // InfoExpandableTile('Theme Params', telegram.themeParams),
        ],
      ),
    );
  }
}

/// themeParams
/// isExpanded
/// viewportHeight
/// viewportStableHeight
/// headerColor
/// backgroundColor
/// isClosingConfirmationEnabled
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
