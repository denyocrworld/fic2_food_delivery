import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_user.freezed.dart';
part 'firebase_user.g.dart';

@freezed
class FirebaseUser with _$FirebaseUser {
  factory FirebaseUser({
    String? uid,
    String? name,
    String? email,
    String? photo,
    String? website,
    String? github,
    String? whatsapp,
  }) = _FirebaseUser;

  factory FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserFromJson(json);
}
