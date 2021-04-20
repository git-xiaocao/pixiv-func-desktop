// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmarks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bookmarks _$BookmarksFromJson(Map<String, dynamic> json) {
  return Bookmarks(
    json['error'] as bool,
    json['message'] as String,
    json['body'] is! Map
        ? null
        : BookmarksBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BookmarksToJson(Bookmarks instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
