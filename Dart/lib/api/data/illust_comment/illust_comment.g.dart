// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IllustComment _$IllustCommentFromJson(Map<String, dynamic> json) {
  return IllustComment(
    json['error'] as bool,
    json['message'] as String,
    json['body'] == null
        ? null
        : IllustCommentBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IllustCommentToJson(IllustComment instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
