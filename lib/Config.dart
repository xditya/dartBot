import 'package:dotenv/dotenv.dart' show load, clean, isEveryDefined, env;

class Config {
  String? botToken() {
    load();
    return env['BOT_TOKEN'];
  }
  // if (isEveryDefined(['BOT_TOKEN'])) {
  //   load();
  //   clean();
  // } else {
  //   throw Exception('BOT_TOKEN is not defined');
  // }
  // return env['BOT_TOKEN'];

}

// String? Config() {
//   if (isEveryDefined(['BOT_TOKEN'])) {
//     load();
//     clean();
//   } else {
//     throw Exception('BOT_TOKEN is not defined');
//   }
//   return env['BOT_TOKEN'];
// }
