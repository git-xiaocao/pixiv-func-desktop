// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Work _$WorksFromJson(Map<String, dynamic> json) {
  return Work(
    int.parse(json['id'] as String),
    json['title'] as String,
    json['url'] as String,
    json['description'] as String,
    (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    int.parse(json['userId'] as String),
    json['userName'] as String,
    json['width'] as int,
    json['height'] as int,
    json['pageCount'] as int,
    json['isBookmarkable'] as bool,
    json['alt'] as String,
    json['createDate'] as String,
    json['updateDate'] as String,
    json['profileImageUrl'] as String?,
  );
}

Map<String, dynamic> _$WorksToJson(Work instance) => <String, dynamic>{
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
      'alt': instance.alt,
      'createDate': instance.createDate,
      'updateDate': instance.updateDate,
      'profileImageUrl': instance.profileImageUrl,
    };
