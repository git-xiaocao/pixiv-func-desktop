// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IllustDetails _$IllustDetailsFromJson(Map<String, dynamic> json) {
  return IllustDetails(
    json['url'] as String,
    (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    (json['illust_images'] as List<dynamic>)
        .map((e) => IllustImage.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['manga_a'] as List<dynamic>?)
        ?.map((e) => Manga.fromJson(e as Map<String, dynamic>))
        .toList(),
    (json['display_tags'] as List<dynamic>)
        .map((e) => DisplayTag.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['tags_editable'] as bool,
    json['bookmark_user_total'] as int,
    json['url_s'] as String?,
    json['url_ss'] as String?,
    json['url_big'] as String?,
    json['url_placeholder'] as String?,
    json['bookmark_id'] is String
        ? int.parse(json['bookmark_id'] as String)
        : null,
    json['alt'] as String,
    int.parse(json['page_count'] as String),
    json['comment'] as String?,
  );
}

Map<String, dynamic> _$IllustDetailsToJson(IllustDetails instance) =>
    <String, dynamic>{
      'url': instance.url,
      'tags': instance.tags,
      'illust_images': instance.illustImages.map((e) => e.toJson()).toList(),
      'manga_a': instance.mangaA?.map((e) => e.toJson()).toList(),
      'display_tags': instance.displayTags.map((e) => e.toJson()).toList(),
      'tags_editable': instance.tagsEditable,
      'bookmark_user_total': instance.bookmarkUserTotal,
      'url_s': instance.urlS,
      'url_ss': instance.urlSS,
      'url_big': instance.urlBig,
      'url_placeholder': instance.urlPlaceholder,
      'alt': instance.alt,
      'page_count': instance.pageCount,
      'comment': instance.comment,
    };
