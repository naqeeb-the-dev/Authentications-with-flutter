import 'package:equatable/equatable.dart';

class AppUser extends Equatable {
  final String email;
  final String username;
  final String password;
  final String publicKey;
  final String privateKey;
  final String salt;

  const AppUser({
    required this.email,
    required this.username,
    required this.password,
    required this.publicKey,
    required this.privateKey,
    required this.salt,
  });

  String get initials => username.substring(0, 2).toUpperCase();

  factory AppUser.fromMap(Map<String, dynamic> data, [String docId = ""]) {
    return AppUser(
      email: data["email"] ?? "",
      username: data["username"] ?? "",
      publicKey: data["publicKey"] ?? "",
      password: data["password"] ?? "",
      privateKey: data["privateKey"] ?? "",
      salt: data["salt"] ?? "",
    );
  }

  Map<String, String> toMap() => {
        //"id": id,
        "email": email,
        "username": username,
        "password": password,
        "publicKey": publicKey,
        "privateKey": privateKey,
        "salt": salt,
      };

  @override
  List<Object?> get props => [
        email,
        username,
        password,
        publicKey,
        privateKey,
        salt,
      ];
}
