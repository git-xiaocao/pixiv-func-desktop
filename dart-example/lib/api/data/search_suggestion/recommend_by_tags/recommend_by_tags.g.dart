// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_by_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendByTags _$RecommendByTagsFromJson(Map<String, dynamic> json) {
  return RecommendByTags(
    (json['illust'] as List<dynamic>)
        .map((e) => Illust.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RecommendByTagsToJson(RecommendByTags instance) =>
    <String, dynamic>{
      'illust': instance.illust.map((e) => e.toJson()).toList(),
    };
