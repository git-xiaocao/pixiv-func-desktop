// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'following_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowingBody _$FollowingBodyFromJson(Map<String, dynamic> json) {
  return FollowingBody(
    (json['users'] as List<dynamic>)
        .map((e) => UserPreview.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['total'] as int,
    (json['followUserTags'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$FollowingBodyToJson(FollowingBody instance) =>
    <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'followUserTags': instance.followUserTags,
    };
