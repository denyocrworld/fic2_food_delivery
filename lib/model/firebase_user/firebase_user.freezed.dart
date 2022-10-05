// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firebase_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FirebaseUser _$FirebaseUserFromJson(Map<String, dynamic> json) {
  return _FirebaseUser.fromJson(json);
}

/// @nodoc
mixin _$FirebaseUser {
  String? get uid => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get github => throw _privateConstructorUsedError;
  String? get whatsapp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseUserCopyWith<FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseUserCopyWith<$Res> {
  factory $FirebaseUserCopyWith(
          FirebaseUser value, $Res Function(FirebaseUser) then) =
      _$FirebaseUserCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String? name,
      String? email,
      String? photo,
      String? website,
      String? github,
      String? whatsapp});
}

/// @nodoc
class _$FirebaseUserCopyWithImpl<$Res> implements $FirebaseUserCopyWith<$Res> {
  _$FirebaseUserCopyWithImpl(this._value, this._then);

  final FirebaseUser _value;
  // ignore: unused_field
  final $Res Function(FirebaseUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photo = freezed,
    Object? website = freezed,
    Object? github = freezed,
    Object? whatsapp = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      github: github == freezed
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsapp: whatsapp == freezed
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FirebaseUserCopyWith<$Res>
    implements $FirebaseUserCopyWith<$Res> {
  factory _$$_FirebaseUserCopyWith(
          _$_FirebaseUser value, $Res Function(_$_FirebaseUser) then) =
      __$$_FirebaseUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String? name,
      String? email,
      String? photo,
      String? website,
      String? github,
      String? whatsapp});
}

/// @nodoc
class __$$_FirebaseUserCopyWithImpl<$Res>
    extends _$FirebaseUserCopyWithImpl<$Res>
    implements _$$_FirebaseUserCopyWith<$Res> {
  __$$_FirebaseUserCopyWithImpl(
      _$_FirebaseUser _value, $Res Function(_$_FirebaseUser) _then)
      : super(_value, (v) => _then(v as _$_FirebaseUser));

  @override
  _$_FirebaseUser get _value => super._value as _$_FirebaseUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photo = freezed,
    Object? website = freezed,
    Object? github = freezed,
    Object? whatsapp = freezed,
  }) {
    return _then(_$_FirebaseUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      github: github == freezed
          ? _value.github
          : github // ignore: cast_nullable_to_non_nullable
              as String?,
      whatsapp: whatsapp == freezed
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirebaseUser implements _FirebaseUser {
  _$_FirebaseUser(
      {this.uid,
      this.name,
      this.email,
      this.photo,
      this.website,
      this.github,
      this.whatsapp});

  factory _$_FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$$_FirebaseUserFromJson(json);

  @override
  final String? uid;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? photo;
  @override
  final String? website;
  @override
  final String? github;
  @override
  final String? whatsapp;

  @override
  String toString() {
    return 'FirebaseUser(uid: $uid, name: $name, email: $email, photo: $photo, website: $website, github: $github, whatsapp: $whatsapp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.github, github) &&
            const DeepCollectionEquality().equals(other.whatsapp, whatsapp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(github),
      const DeepCollectionEquality().hash(whatsapp));

  @JsonKey(ignore: true)
  @override
  _$$_FirebaseUserCopyWith<_$_FirebaseUser> get copyWith =>
      __$$_FirebaseUserCopyWithImpl<_$_FirebaseUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirebaseUserToJson(
      this,
    );
  }
}

abstract class _FirebaseUser implements FirebaseUser {
  factory _FirebaseUser(
      {final String? uid,
      final String? name,
      final String? email,
      final String? photo,
      final String? website,
      final String? github,
      final String? whatsapp}) = _$_FirebaseUser;

  factory _FirebaseUser.fromJson(Map<String, dynamic> json) =
      _$_FirebaseUser.fromJson;

  @override
  String? get uid;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get photo;
  @override
  String? get website;
  @override
  String? get github;
  @override
  String? get whatsapp;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseUserCopyWith<_$_FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}
