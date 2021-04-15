// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'works.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Works _$WorksFromJson(Map<String, dynamic> json) {
  return Works(
    int.parse(json['id'] as String),
    json['title'] as String,
    json['url'] as String,
    json['description'] as String,
    (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    json['userId'] as String,
    json['userName'] as String,
    json['width'] as int,
    json['height'] as int,
    json['pageCount'] as int,
    json['isBookmarkable'] as bool,
    json['bookmarkData'] == null
        ? null
        : BookmarkData.fromJson(json['bookmarkData'] as Map<String, dynamic>),
    json['alt'] as String,
    json['createDate'] as String,
    json['updateDate'] as String,
  );
}

Map<String, dynamic> _$WorksToJson(Works instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'description': instance.description,
      'tags': instance.tags,
      'userId': instance.userId,
      'userName': instance.userName,
      'width': instance.width,
      'height': instance.height,
      'pageCount': instance.pageCount,
      'isBookmarkable': instance.isBookmarkable,
      'bookmarkData': instance.bookmarkData?.toJson(),
      'alt': instance.alt,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
    };
