// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_illusts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowIllusts _$FollowIllustsFromJson(Map<String, dynamic> json) {
  return FollowIllusts(
    json['error'] as bool,
    json['message'] as String,
    json['body'] is! Map
        ? null
        : FollowIllustsBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FollowIllustsToJson(FollowIllusts instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
