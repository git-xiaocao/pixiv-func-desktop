import 'package:json_annotation/json_annotation.dart';

part 'author_details.g.dart';

@JsonSerializable(explicitToJson: true)
class AuthorDetails {
  @JsonKey(name: 'user_id')
  late String userId;
  @JsonKey(name: 'user_status')
  late String userStatus;
  @JsonKey(name: 'user_account')
  late String userAccount;
  @JsonKey(name: 'user_name')
  late String userName;
  @JsonKey(name: 'user_premium')
  late String userPremium;
  /// main
  @JsonKey(name: 'profile_img')
  late Map<String, String> profileImg;
  ///被自己关注
  @JsonKey(name: 'is_followed')
  late bool isFollowed;
  ///接单
  @JsonKey(name: 'accept_request')
  late bool acceptRequest;


  AuthorDetails(this.userId, this.userStatus, this.userAccount, this.userName,
      this.userPremium, this.profileImg, this.isFollowed, this.acceptRequest);

  factory AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDetailsToJson(this);

}
