// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_bookmarks_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBookmarksBody _$UserBookmarksBodyFromJson(Map<String, dynamic> json) {
  return UserBookmarksBody(
    (json['works'] as List<dynamic>)
        .map((e) => Works.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['total'] as int,
  );
}

Map<String, dynamic> _$UserBookmarksBodyToJson(UserBookmarksBody instance) =>
    <String, dynamic>{
      'works': instance.works.map((e) => e.toJson()).toList(),
      'total': instance.total,
    };
