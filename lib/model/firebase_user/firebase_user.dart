import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_user.freezed.dart';
part 'firebase_user.g.dart';

@freezed
class FirebaseUser with _$FirebaseUser {
  factory FirebaseUser({
    String? name,
    String? email,
    String? photo,
  }) = _FirebaseUser;

  factory FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserFromJson(json);
}
