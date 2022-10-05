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
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

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
  $Res call({String? name, String? email, String? photo});
}

/// @nodoc
class _$FirebaseUserCopyWithImpl<$Res> implements $FirebaseUserCopyWith<$Res> {
  _$FirebaseUserCopyWithImpl(this._value, this._then);

  final FirebaseUser _value;
  // ignore: unused_field
  final $Res Function(FirebaseUser) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String? name, String? email, String? photo});
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
    Object? name = freezed,
    Object? email = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_FirebaseUser(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FirebaseUser implements _FirebaseUser {
  _$_FirebaseUser({this.name, this.email, this.photo});

  factory _$_FirebaseUser.fromJson(Map<String, dynamic> json) =>
      _$$_FirebaseUserFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? photo;

  @override
  String toString() {
    return 'FirebaseUser(name: $name, email: $email, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseUser &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photo, photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photo));

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
      {final String? name,
      final String? email,
      final String? photo}) = _$_FirebaseUser;

  factory _FirebaseUser.fromJson(Map<String, dynamic> json) =
      _$_FirebaseUser.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_FirebaseUserCopyWith<_$_FirebaseUser> get copyWith =>
      throw _privateConstructorUsedError;
}
