import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable(explicitToJson: true)
class Comment{
  String img;
  @JsonKey(name: 'one_comment_comment')
  String oneComment;
  @JsonKey(name: 'one_comment_date')
  String oneCommentDate;
  @JsonKey(name: 'one_comment_date2')
  String oneCommentDate2;
  @JsonKey(name: 'one_comment_id')
  int oneCommentId;//string
  @JsonKey(name:'one_comment_parent_id')
  int? oneCommentParentId;
  @JsonKey(name:'one_comment_root_id')
  int? oneCommentRootId;
  @JsonKey(name: 'one_comment_user_id')
  int oneCommentUserId;//string
  @JsonKey(name: 'user_account')
  String userAccount;
  @JsonKey(name: 'user_id')
  int userId;//string
  @JsonKey(name: 'user_name')
  String userName;
  @JsonKey(name: 'has_replies')
  bool hasReplies;


  Comment(
      this.img,
      this.oneComment,
      this.oneCommentDate,
      this.oneCommentDate2,
      this.oneCommentId,
      this.oneCommentParentId,
      this.oneCommentRootId,
      this.oneCommentUserId,
      this.userAccount,
      this.userId,
      this.userName,
      this.hasReplies);

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
