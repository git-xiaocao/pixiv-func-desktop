// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return Thumbnail(
    int.parse(json['id'] as String),
    json['title'] as String,
    json['url'] as String,
    json['description'] as String,
    (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    int.parse(json['userId'] as String),
    json['userName'] as String,
    json['width'] as int,
    json['height'] as int,
    json['isBookmarkable'] as bool,
    json['bookmarkData'] == null
        ? null
        : BookmarkData.fromJson(json['bookmarkData'] as Map<String, dynamic>),
    json['alt'] as String,
    json['createDate'] as String,
    json['updateDate'] as String,
    json['profileImageUrl'] as String,
  );
}

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'description': instance.description,
      'tags': instance.tags,
      'userId': instance.userId,
      'userName': instance.userName,
      'width': instance.width,
      'height': instance.height,
      'isBookmarkable': instance.isBookmarkable,
      'bookmarkData': instance.bookmarkData,
      'alt': instance.alt,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'profileImageUrl': instance.profileImageUrl,
    };
