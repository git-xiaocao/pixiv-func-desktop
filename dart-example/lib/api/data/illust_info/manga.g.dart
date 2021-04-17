// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Manga _$MangaFromJson(Map<String, dynamic> json) {
  return Manga(
    json['page'] as int,
    json['url'] as String,
    json['url_small'] as String,
    json['url_big'] as String,
  );
}

Map<String, dynamic> _$MangaToJson(Manga instance) => <String, dynamic>{
      'page': instance.page,
      'url': instance.url,
      'url_small': instance.url_small,
      'url_big': instance.url_big,
    };
