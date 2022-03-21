void pingCmd(message) {
  DateTime now = DateTime.now();
  message.reply("Ping!");
  DateTime newTime = DateTime.now();
  int diff = newTime.millisecond - now.millisecond;
  message.reply("Pong! (${diff}ms)");
}
