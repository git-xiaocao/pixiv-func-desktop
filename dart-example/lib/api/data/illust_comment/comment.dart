import 'package:json_annotation/json_annotation.dart';

part 'comment.g.dart';

@JsonSerializable(explicitToJson: true)
class Comment{
  @JsonKey(name: 'userId')
  late String userId;
  @JsonKey(name: 'userName')
  late String userName;
  ///头像
  @JsonKey(name: 'img')
  late String img;
  @JsonKey(name: 'id')
  late String id;
  @JsonKey(name: 'comment')
  late String comment;
  @JsonKey(name: 'commentDate')
  late String commentDate;
  @JsonKey(name: 'commentUserId')
  late String commentUserId;
  @JsonKey(name: 'editable')
  late bool editable;
  @JsonKey(name: 'hasReplies')
  late bool hasReplies;


  Comment(this.userId, this.userName, this.img, this.id, this.comment,
      this.commentDate, this.commentUserId, this.editable, this.hasReplies);

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
