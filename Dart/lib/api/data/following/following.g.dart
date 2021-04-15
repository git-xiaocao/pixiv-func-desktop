// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Following _$FollowingFromJson(Map<String, dynamic> json) {
  return Following(
    json['error'] as bool,
    json['message'] as String,
    json['body'] == null
        ? null
        : FollowingBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FollowingToJson(Following instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
