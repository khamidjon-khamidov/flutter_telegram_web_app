import 'package:example/screens/util/string_snackbar_extension.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class FileDownloadScreen extends StatefulWidget {
  const FileDownloadScreen({super.key});

  @override
  State<FileDownloadScreen> createState() => _FileDownloadScreenState();
}

class _FileDownloadScreenState extends State<FileDownloadScreen> {
  TelegramWebApp get telegram => TelegramWebApp.instance;

  final TextEditingController urlController = TextEditingController();
  final TextEditingController filenameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), initEvents);
  }

  void initEvents() {
    TelegramWebApp.instance.onEvent(FileDownloadRequestedEvent(fileDownloadRequested));
  }

  @override
  void dispose() {
    stopEvents();
    urlController.dispose();
    filenameController.dispose();
    super.dispose();
  }

  void stopEvents() {
    TelegramWebApp.instance.offEvent(FileDownloadRequestedEvent(fileDownloadRequested));
  }

  void fileDownloadRequested(String status) {
    print("Got fileDownloadRequested event");
    "fileDownloadRequested status: $status".showSnackbar(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('File Download')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: urlController,
              maxLines: 1,
              decoration: const InputDecoration(label: Text("Enter url")),
            ),
            TextField(
              controller: filenameController,
              maxLines: 1,
              decoration: const InputDecoration(label: Text("Enter filename")),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Start Download'),
              onPressed: () {
                telegram.downloadFile(
                  urlController.text.trim(),
                  filenameController.text.trim(),
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
