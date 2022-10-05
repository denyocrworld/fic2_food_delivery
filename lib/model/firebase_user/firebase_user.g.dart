// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirebaseUser _$$_FirebaseUserFromJson(Map<String, dynamic> json) =>
    _$_FirebaseUser(
      uid: json['uid'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      photo: json['photo'] as String?,
      website: json['website'] as String?,
      github: json['github'] as String?,
      whatsapp: json['whatsapp'] as String?,
    );

Map<String, dynamic> _$$_FirebaseUserToJson(_$_FirebaseUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'photo': instance.photo,
      'website': instance.website,
      'github': instance.github,
      'whatsapp': instance.whatsapp,
    };
