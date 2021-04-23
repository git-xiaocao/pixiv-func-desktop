// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Novel _$NovelFromJson(Map<String, dynamic> json) {
  return Novel(
    json['tag'] as String,
    (json['ids'] as List<dynamic>).map((e) => int.parse(e as String)).toList(),
  );
}

Map<String, dynamic> _$NovelToJson(Novel instance) => <String, dynamic>{
      'tag': instance.tag,
      'ids': instance.ids,
    };
