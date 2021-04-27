// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Illust _$IllustFromJson(Map<String, dynamic> json) {
  return Illust(
    json['url'] as String?,
    (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    json['alt'] as String,
    json['url_s'] as String,
    json['url_sm'] as String,
    json['url_w'] as String,
    json['url_ss'] as String?,
    json['url_big'] as String?,
    json['url_placeholder'] as String?,
    json['upload_timestamp'] as int,
    json['id'] as int,
    json['user_id'] as int,
    json['title'] as String,
    json['width'] as int,
    json['height'] as int,
    json['page_count'] as int,
    json['comment'] as String,
  );
}

Map<String, dynamic> _$IllustToJson(Illust instance) => <String, dynamic>{
      'url': instance.url,
      'tags': instance.tags,
      'alt': instance.alt,
      'url_s': instance.urlS,
      'url_sm': instance.urlSM,
      'url_w': instance.urlW,
      'url_ss': instance.urlSS,
      'url_big': instance.urlBig,
      'url_placeholder': instance.urlPlaceholder,
      'upload_timestamp': instance.uploadTimestamp,
      'id': instance.id,
      'user_id': instance.userId,
      'title': instance.title,
      'width': instance.width,
      'height': instance.height,
      'page_count': instance.pageCount,
      'comment': instance.comment,
    };
