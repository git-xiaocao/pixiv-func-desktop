// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchBody _$SearchBodyFromJson(Map<String, dynamic> json) {
  return SearchBody(
    (json['illusts'] as List<dynamic>)
        .map((e) => !(e as Map<String, dynamic>).containsKey('is_ad_container')
            ? Illust.fromJson(e)
            : null)
        .toList(),
    json['total'] as int,
    json['lastPage'] as int,
  );
}

Map<String, dynamic> _$SearchBodyToJson(SearchBody instance) =>
    <String, dynamic>{
      'illusts': instance.illusts.map((e) => e?.toJson()).toList(),
      'total': instance.total,
      'lastPage': instance.lastPage,
    };
