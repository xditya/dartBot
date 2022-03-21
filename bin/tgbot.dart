// (c) @xditya
// idk wtf this is, but it works

import 'package:logging/logging.dart' as logging;
import 'package:teledart/model.dart';
import 'package:teledart/teledart.dart';
import 'package:tgbot/Config.dart';
import 'package:tgbot/helpers.dart';
import 'package:tgbot/logging.dart';
import 'package:tgbot/modules/all.dart';

void main() async {
  logging.Logger log = logging.Logger("");
  log.level = logging.Level.ALL;
  registerLogging(log);

  String? botToken = Config().botToken();
  var username = await getUsername(botToken);
  var teledart = TeleDart(botToken.toString(), Event(username.toString()));
  teledart.start();
  log.fine("Started");

  // register commands
  teledart.onCommand('start').listen((message) => startCmd(message));
  teledart.onCommand('ping').listen((message) => pingCmd(message));
  teledart.onInlineQuery().listen((inlineQuery) => inlineQuery.answer([
        InlineQueryResultArticle(
            id: 'ping',
            title: 'ping',
            input_message_content: InputTextMessageContent(
                message_text: '*pong*', parse_mode: 'MarkdownV2')),
        InlineQueryResultArticle(
            id: 'ding',
            title: 'ding',
            input_message_content: InputTextMessageContent(
                message_text: '*_dong_*', parse_mode: 'MarkdownV2')),
      ]));
}
