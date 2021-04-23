// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendTags _$RecommendTagsFromJson(Map<String, dynamic> json) {
  return RecommendTags(
    (json['illust'] as List<dynamic>)
        .map((e) => Illust.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RecommendTagsToJson(RecommendTags instance) =>
    <String, dynamic>{
      'illust': instance.illust.map((e) => e.toJson()).toList(),
    };
