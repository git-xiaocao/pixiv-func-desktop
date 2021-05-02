// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return Comment(
    json['img'] as String,
    json['one_comment_comment'] as String,
    json['one_comment_date'] as String,
    json['one_comment_date2'] as String,
    int.parse(json['one_comment_id'] as String),
    json['one_comment_parent_id'] != null
        ? int.parse(json['one_comment_parent_id'] as String)
        : null,
    json['one_comment_root_id'] != null
        ? int.parse(json['one_comment_root_id'] as String)
        : null,
    int.parse(json['one_comment_user_id'] as String),
    json['user_account'] as String,
    int.parse(json['user_id'] as String),
    json['user_name'] as String,
    json['has_replies'] as bool,
  );
}

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'img': instance.img,
      'one_comment_comment': instance.oneComment,
      'one_comment_date': instance.oneCommentDate,
      'one_comment_date2': instance.oneCommentDate2,
      'one_comment_id': instance.oneCommentId,
      'one_comment_user_id': instance.oneCommentUserId,
      'user_account': instance.userAccount,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'has_replies': instance.hasReplies,
    };
