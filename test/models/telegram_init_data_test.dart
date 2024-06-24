import 'package:flutter_test/flutter_test.dart';
import 'package:telegram_web_app/src/models/telegram_init_data.dart';

void main() {
  test('given raw -> parses correctly to TelegramInitData', () {
    String raw =
        "user=%7B%22id%22%3A693511440%2C%22first_name%22%3A%22Khamidjon%20%C4%9F%22%2C%22last_name%22%3A%22Khamidov%22%2C%22username%22%3A%22work_smard%22%2C%22language_code%22%3A%22en%22%2C%22allows_write_to_pm%22%3Atrue%7D&chat_instance=2867425736722545858&chat_type=private&start_param=hello&auth_date=1719249284&hash=745c7ce9699056e39efb8948526204c7804b05437f55ca1e474aa9cac07e6b2a";
    TelegramInitData expected = TelegramInitData(
      user: TelegramUser(
        id: 693511440,
        firstname: 'Khamidjon ğ',
        lastname: 'Khamidov',
        username: 'work_smard',
        languageCode: 'en',
        allowsWriteToPm: true,
      ),
      chatInstance: 2867425736722545858,
      chatType: 'private',
      authDate: 1719249284,
      hash: '745c7ce9699056e39efb8948526204c7804b05437f55ca1e474aa9cac07e6b2a',
      raw:
          'user=%7B%22id%22%3A693511440%2C%22first_name%22%3A%22Khamidjon%20%C4%9F%22%2C%22last_name%22%3A%22Khamidov%22%2C%22username%22%3A%22work_smard%22%2C%22language_code%22%3A%22en%22%2C%22allows_write_to_pm%22%3Atrue%7D&chat_instance=2867425736722545858&chat_type=private&start_param=hello&auth_date=1719249284&hash=745c7ce9699056e39efb8948526204c7804b05437f55ca1e474aa9cac07e6b2a',
    );

    TelegramInitData actual = TelegramInitData.fromRawString(raw);

    expect(expected, actual);
  });
}
