import 'package:json_annotation/json_annotation.dart';
import 'illust.dart';

part 'user_preview.g.dart';

@JsonSerializable(explicitToJson: true)
class UserPreview{
  @JsonKey(name: 'userId')
  late String userId;
  @JsonKey(name: 'userName')
  late String userName;
  @JsonKey(name: 'profileImageUrl')
  late String profileImageUrl;
  @JsonKey(name: 'userComment')
  late String userComment;
  @JsonKey(name: 'following')
  late bool following;
  @JsonKey(name: 'followed')
  late bool followed;
  @JsonKey(name: 'isBlocking')
  late bool isBlocking;
  @JsonKey(name: 'isMypixiv')
  late bool isMyPixiv;
  @JsonKey(name: 'illusts')
  late List<Illust> illusts;
  ///接受约稿?
  @JsonKey(name: 'acceptRequest')
  late bool acceptRequest;

  UserPreview(
      this.userId,
      this.userName,
      this.profileImageUrl,
      this.userComment,
      this.following,
      this.followed,
      this.isBlocking,
      this.isMyPixiv,
      this.illusts,
      this.acceptRequest);



  factory UserPreview.fromJson(Map<String, dynamic> json) => _$UserPreviewFromJson(json);

  Map<String, dynamic> toJson() => _$UserPreviewToJson(this);
}
