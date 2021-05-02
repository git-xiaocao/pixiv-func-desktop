import 'package:json_annotation/json_annotation.dart';
import 'comment.dart';

part 'illust_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class IllustCommentBody{
  @JsonKey(name: 'comments')
  late List<Comment> comments;
  ///还有
  @JsonKey(name: 'comment_count')
  late int? commentCount;


  IllustCommentBody(this.comments, this.commentCount);

  factory IllustCommentBody.fromJson(Map<String, dynamic> json) => _$IllustCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$IllustCommentBodyToJson(this);
}
