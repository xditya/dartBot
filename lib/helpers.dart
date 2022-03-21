import 'package:teledart/telegram.dart';

Future<String?> getUsername(botToken) async =>
    (await Telegram(botToken).getMe()).username;
