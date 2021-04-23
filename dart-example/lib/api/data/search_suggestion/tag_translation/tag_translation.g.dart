// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_translation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagTranslation _$TagTranslationFromJson(Map<String, dynamic> json) {
  return TagTranslation(
    json['en'] as String?,
    json['ko'] as String?,
    json['zh'] as String?,
    json['zh_tw'] as String?,
    json['romaji'] as String?,
  );
}

Map<String, dynamic> _$TagTranslationToJson(TagTranslation instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ko': instance.ko,
      'zh': instance.zh,
      'zh_tw': instance.zh_tw,
      'romaji': instance.romaji,
    };
