// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookmarksBody _$BookmarksBodyFromJson(Map<String, dynamic> json) {
  return BookmarksBody(
    (json['bookmarks'] as List<dynamic>)
        .map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['total'] as int,
    json['lastPage'] as int,
  );
}

Map<String, dynamic> _$BookmarksBodyToJson(BookmarksBody instance) =>
    <String, dynamic>{
      'bookmarks': instance.bookmarks.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'lastPage': instance.lastPage,
    };
