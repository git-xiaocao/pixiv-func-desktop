// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_all.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileAll _$ProfileAllFromJson(Map<String, dynamic> json) {
  return ProfileAll(
    json['error'] as bool,
    json['message'] as String,
    ProfileAllBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfileAllToJson(ProfileAll instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
