// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust_comment_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IllustCommentBody _$IllustCommentBodyFromJson(Map<String, dynamic> json) {
  return IllustCommentBody(
    (json['comments'] as List<dynamic>)
        .map((e) => Comment.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['comment_count'] as int?,
  );
}

Map<String, dynamic> _$IllustCommentBodyToJson(IllustCommentBody instance) =>
    <String, dynamic>{
      'comments': instance.comments.map((e) => e.toJson()).toList(),
      'comment_count': instance.commentCount,
    };
