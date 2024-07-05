import 'package:flutter_test/flutter_test.dart';
import 'package:telegram_web_app/telegram_web_app.dart' show TelegramInitData, TelegramUser;

void main() {
  test('given raw with utf8 character ğ -> parses correctly to TelegramInitData', () {
    String raw =
        "user=%7B%22id%22%3A123456789%2C%22first_name%22%3A%22Khamidjon%20%C4%9F%22%2C%22last_name%22%3A%22Khamidov%22%2C%22username%22%3A%22work_smard%22%2C%22language_code%22%3A%22en%22%2C%22allows_write_to_pm%22%3Atrue%7D&chat_instance=2867425736722545858&chat_type=private&start_param=hello&auth_date=1719249284&hash=745c7ce9699056e39efb8948526204c7804b05437f55ca1e474aa9cac07e6b2a";

    TelegramInitData expected = TelegramInitData(
      user: TelegramUser(
        id: 123456789,
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
      raw: raw,
      queryId: null,
    );

    TelegramInitData actual = TelegramInitData.fromRawString(raw);

    expect(actual, expected);
  });

  test('given raw data with query id -> return expected data', () {
    String raw =
        "query_id=AAEQJVYpAAAAABAlViktrwx4&user=%7B%22id%22%3A123456789%2C%22first_name%22%3A%22Khamidjon%22%2C%22last_name%22%3A%22Khamidov%22%2C%22username%22%3A%22work_smard%22%2C%22language_code%22%3A%22en%22%2C%22allows_write_to_pm%22%3Atrue%7D&auth_date=1719323866&hash=477a1ec076b7c63098ef35ff583eafa529afa9520f1fcacadaa6d915bd2d1d54";
    TelegramInitData expected = TelegramInitData(
      user: TelegramUser(
        id: 123456789,
        firstname: 'Khamidjon',
        lastname: 'Khamidov',
        username: 'work_smard',
        languageCode: 'en',
        allowsWriteToPm: true,
      ),
      chatInstance: null,
      chatType: null,
      authDate: 1719323866,
      hash: '477a1ec076b7c63098ef35ff583eafa529afa9520f1fcacadaa6d915bd2d1d54',
      raw: raw,
      queryId: 'AAEQJVYpAAAAABAlViktrwx4',
    );

    TelegramInitData actual = TelegramInitData.fromRawString(raw);

    expect(actual, expected);
  });

  test('given raw without lastname and username -> value without those field', () {
    String raw =
        "query_id=AAEQJVYpAAAAABAlVin84gI9&user=%7B%22id%22%3A123456789%2C%22first_name%22%3A%22Khamidjon%22%2C%22last_name%22%3A%22%22%2C%22language_code%22%3A%22en%22%2C%22allows_write_to_pm%22%3Atrue%7D&auth_date=1719327669&hash=1c7c432937f32b9dbe01d56375eec0300fb6e760be1518f8280a02ce8f69418a";
    TelegramInitData expected = TelegramInitData(
      user: TelegramUser(
        id: 123456789,
        firstname: 'Khamidjon',
        lastname: null,
        username: null,
        languageCode: 'en',
        allowsWriteToPm: true,
      ),
      chatInstance: null,
      chatType: null,
      authDate: 1719327669,
      hash: '1c7c432937f32b9dbe01d56375eec0300fb6e760be1518f8280a02ce8f69418a',
      queryId: 'AAEQJVYpAAAAABAlVin84gI9',
      raw: raw,
    );

    TelegramInitData actual = TelegramInitData.fromRawString(raw);

    expect(actual, expected);
  });
}
