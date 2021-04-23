// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookmarkData _$BookmarkDataFromJson(Map<String, dynamic> json) {
  return BookmarkData(
    int.parse(json['id'] as String),
    json['private'] as bool,
  );
}

Map<String, dynamic> _$BookmarkDataToJson(BookmarkData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'private': instance.private,
    };
