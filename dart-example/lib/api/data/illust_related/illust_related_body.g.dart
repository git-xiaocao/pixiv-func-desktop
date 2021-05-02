// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust_related_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IllustRelatedBody _$IllustRelatedBodyFromJson(Map<String, dynamic> json) {
  return IllustRelatedBody(
    (json['related'] as List<dynamic>)
        .map((e) => int.parse(e as String))
        .toList(),
    (json['recommend_methods'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          int.parse(k), RecommendMethod.fromJson(e as Map<String, dynamic>)),
    ),
    json['illusts'] != null
        ? (json['illusts'] as List<dynamic>)
            .map((e) => Illust.fromJson(e as Map<String, dynamic>))
            .toList()
        : null,
  );
}

Map<String, dynamic> _$IllustRelatedBodyToJson(IllustRelatedBody instance) =>
    <String, dynamic>{
      'related': instance.related,
      'recommend_methods': instance.recommendMethods
          .map((k, e) => MapEntry(k.toString(), e.toJson())),
      'illust': instance.illusts?.map((e) => e.toJson()).toList(),
    };
