// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_add.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookmarkAdd _$BookmarkAddFromJson(Map<String, dynamic> json) {
  return BookmarkAdd(
    json['error'] as bool,
    json['message'] as String,
    json['body'] == null
        ? null
        : BookmarkAddBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BookmarkAddToJson(BookmarkAdd instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
