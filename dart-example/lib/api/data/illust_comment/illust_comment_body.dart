import 'package:json_annotation/json_annotation.dart';
import 'comment.dart';

part 'illust_comment_body.g.dart';

@JsonSerializable(explicitToJson: true)
class IllustCommentBody{
  @JsonKey(name: 'comments')
  late List<Comment> comments;
  ///还有
  @JsonKey(name: 'hasNext')
  late bool hasNext;


  IllustCommentBody(this.comments, this.hasNext);

  factory IllustCommentBody.fromJson(Map<String, dynamic> json) => _$IllustCommentBodyFromJson(json);

  Map<String, dynamic> toJson() => _$IllustCommentBodyToJson(this);
}
