import 'package:json_annotation/json_annotation.dart';
import 'user_preview.dart';
part 'following_body.g.dart';

@JsonSerializable(explicitToJson: true)
class FollowingBody{
  @JsonKey(name: 'users')
  late List<UserPreview> users;
  @JsonKey(name: 'total')
  late int total;
  ///一般没有
  @JsonKey(name: 'followUserTags')
  late List<String> followUserTags;


  FollowingBody(this.users, this.total, this.followUserTags);

  factory FollowingBody.fromJson(Map<String, dynamic> json) => _$FollowingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$FollowingBodyToJson(this);
}
