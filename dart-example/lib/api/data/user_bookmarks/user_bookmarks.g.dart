// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bookmarks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBookmarks _$UserBookmarksFromJson(Map<String, dynamic> json) {
  return UserBookmarks(
    json['error'] as bool,
    json['message'] as String,
    json['body'] == null
        ? null
        : UserBookmarksBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserBookmarksToJson(UserBookmarks instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
