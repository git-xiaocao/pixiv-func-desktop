// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follow_illusts_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowIllustsBody _$FollowIllustsBodyFromJson(Map<String, dynamic> json) {
  return FollowIllustsBody(
    json['total'] as int,
    json['lastPage'] as int,
  )..illusts = (json['illusts'] as List<dynamic>)
      .map((e) => Illust.fromJson(e as Map<String, dynamic>))
      .toList();
}

Map<String, dynamic> _$FollowIllustsBodyToJson(FollowIllustsBody instance) =>
    <String, dynamic>{
      'illusts': instance.illusts.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'lastPage': instance.lastPage,
    };
