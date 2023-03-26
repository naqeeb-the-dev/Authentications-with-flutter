import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class userSecureStorage {
  static final storage = new FlutterSecureStorage();

  static const keyPrivateKey = "privateKey";

  static Future setPrivateKey(String privateKey) async =>
      await storage.write(key: keyPrivateKey, value: privateKey);

  static Future<String?> getPrivateKey() async =>
      await storage.read(key: keyPrivateKey);
}
