import 'package:example/widgets/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:telegram_web_app/telegram_web_app.dart';

class ShareToStoryScreen extends StatefulWidget {
  const ShareToStoryScreen({super.key});

  @override
  State<ShareToStoryScreen> createState() => _ShareToStoryScreenState();
}

class _ShareToStoryScreenState extends State<ShareToStoryScreen> {
  TextEditingController mediaUrlController = TextEditingController();
  TextEditingController textController = TextEditingController();
  TextEditingController urlController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Share To Story')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// **************** Media Url ***************
            const TitleWidget('Media Url - link to media'),
            const SizedBox(height: 4),
            boxedTextField(mediaUrlController),
            const SizedBox(height: 24),

            /// **************** Story Text ***************
            const SizedBox(height: 24),
            const TitleWidget(
                'Text - story caption (0-200 characters for regular users and 0-2048 characters for premium subscribers)'),
            const SizedBox(height: 4),
            boxedTextField(textController),
            const SizedBox(height: 24),

            /// **************** URL ***************
            const SizedBox(height: 24),
            const TitleWidget('Url - The URL to be included in the story (only for premium users)'),
            const SizedBox(height: 4),
            boxedTextField(urlController),
            const SizedBox(height: 24),

            /// **************** Name ***************
            const SizedBox(height: 24),
            const TitleWidget(
                'Name - The name to be displayed for the widget link, 0-48 characters (only for premium users)'),
            const SizedBox(height: 4),
            boxedTextField(nameController),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            TelegramWebApp.instance.shareToStory(
              mediaUrlController.text,
              params: textController.text.isNotEmpty
                  ? StoryShareParams(
                      text: textController.text,
                      widgetLink: urlController.text.isNotEmpty
                          ? StoryWidgetLink(
                              url: urlController.text,
                              name: nameController.text.isNotEmpty ? nameController.text : null,
                            )
                          : null,
                    )
                  : null,
            );
          },
          child: const Text('Share To Story'),
        ),
      ),
    );
  }

  Widget boxedTextField(TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2.0)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2.0))),
    );
  }

  @override
  void dispose() {
    mediaUrlController.dispose();
    textController.dispose();
    urlController.dispose();
    nameController.dispose();
    super.dispose();
  }
}
