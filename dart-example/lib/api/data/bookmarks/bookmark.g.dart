// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bookmark _$BookmarkFromJson(Map<String, dynamic> json) {
  return Bookmark(
    json['url'] as String?,
    (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    int.parse(json['bookmark_id'] as String),
    json['alt'] as String,
    json['url_s'] as String?,
    json['url_sm'] as String?,
    json['url_w'] as String?,
    json['url_ss'] as String?,
    json['url_big'] as String?,
    json['url_placeholder'] as String?,
    json['upload_timestamp'] as int,
    int.parse(json['id'] as String),
    int.parse(json['user_id'] as String),
    json['title'] as String,
    int.parse(json['width'] as String),
    int.parse(json['height'] as String),
    int.parse(json['page_count'] as String),
    AuthorDetails.fromJson(json['author_details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BookmarkToJson(Bookmark instance) => <String, dynamic>{
      'url': instance.url,
      'tags': instance.tags,
      'bookmark_id': instance.bookmarkId,
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
      'author_details': instance.authorDetails.toJson(),
    };
