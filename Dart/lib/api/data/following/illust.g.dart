// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Illust _$IllustFromJson(Map<String, dynamic> json) {
  return Illust(
    json['id'] as String,
    json['title'] as String,
    json['illustType'] as int,
    json['url'] as String,
    json['description'] as String,
    (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    json['userId'] as String,
    json['userName'] as String,
    json['width'] as int,
    json['height'] as int,
    json['pageCount'] as int,
    json['isBookmarkable'] as bool,
    json['alt'] as String,
    json['createDate'] as String,
    json['updateDate'] as String,
    json['isUnlisted'] as bool,
    json['isMasked'] as bool,
    json['profileImageUrl'] as String,
  );
}

Map<String, dynamic> _$IllustToJson(Illust instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'illustType': instance.illustType,
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
      'isUnlisted': instance.isUnlisted,
      'isMasked': instance.isMasked,
      'profileImageUrl': instance.profileImageUrl,
    };
