// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_add_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookmarkAddBody _$BookmarkAddBodyFromJson(Map<String, dynamic> json) {
  return BookmarkAddBody(
      json['last_bookmark_id'] is String ? int.parse(json['last_bookmark_id'] as String) :null,
  );
}

Map<String, dynamic> _$BookmarkAddBodyToJson(BookmarkAddBody instance) =>
    <String, dynamic>{
      'last_bookmark_id': instance.lastBookmarkId,
    };
