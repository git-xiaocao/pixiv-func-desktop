// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_tags.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularTags _$PopularTagsFromJson(Map<String, dynamic> json) {
  return PopularTags(
    (json['illust'] as List<dynamic>)
        .map((e) => Illust.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['novel'] as List<dynamic>)
        .map((e) => Novel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PopularTagsToJson(PopularTags instance) =>
    <String, dynamic>{
      'illust': instance.illust.map((e) => e.toJson()).toList(),
      'novel': instance.novel.map((e) => e.toJson()).toList(),
    };
