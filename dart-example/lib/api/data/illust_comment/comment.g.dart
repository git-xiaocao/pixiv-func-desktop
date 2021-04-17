// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return Comment(
    json['userId'] as String,
    json['userName'] as String,
    json['img'] as String,
    json['id'] as String,
    json['comment'] as String,
    json['commentDate'] as String,
    json['commentUserId'] as String,
    json['editable'] as bool,
    json['hasReplies'] as bool,
  );
}

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'img': instance.img,
      'id': instance.id,
      'comment': instance.comment,
      'commentDate': instance.commentDate,
      'commentUserId': instance.commentUserId,
      'editable': instance.editable,
      'hasReplies': instance.hasReplies,
    };
