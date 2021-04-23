// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Illust _$IllustFromJson(Map<String, dynamic> json) {
  return Illust(
    json['tag'] as String,
    (json['ids'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$IllustToJson(Illust instance) => <String, dynamic>{
      'tag': instance.tag,
      'ids': instance.ids,
    };
