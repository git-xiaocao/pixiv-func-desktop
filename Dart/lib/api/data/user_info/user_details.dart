import 'package:json_annotation/json_annotation.dart';
import 'profile_img.dart';

part 'user_details.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDetails{
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
  @JsonKey(name: 'user_webpage')
  late String userWebpage;//博客
  @JsonKey(name: 'user_country')
  late String? userCountry;//国家
  @JsonKey(name: 'user_birth')
  late String? userBirth;//出生日期
  @JsonKey(name: 'user_comment')
  late String userComment;
  @JsonKey(name: 'profile_img')
  late ProfileImg profileImg;
  @JsonKey(name: 'location')
  late String? location;//地区
  @JsonKey(name: 'user_job_txt')
  late String? userJobTxt;//工作
  @JsonKey(name: 'user_sex_txt')
  late String? userSexTxt;//性别
  @JsonKey(name: 'user_age')
  late int? userAge;//年龄
  @JsonKey(name: 'user_birth_txt')
  late String? userBirthTxt;//生日
  @JsonKey(name: 'is_followed')
  late bool isFollowed;
  @JsonKey(name: 'is_following')
  late bool isFollowing;
  @JsonKey(name: 'is_mypixiv')
  late bool isMyPixiv;
  @JsonKey(name: 'is_blocked')
  late bool isBlocked;
  @JsonKey(name: 'is_blocking')
  late bool isBlocking;
  @JsonKey(name: 'accept_request')
  late bool acceptRequest;
  @JsonKey(name: 'is_official')
  late bool isOfficial;
  @JsonKey(name: 'follows')
  late int follows;//关注的数量
  @JsonKey(name: 'social')
  late Map<String, Map<String, String>>? social;
  @JsonKey(name: 'user_comment_html')
  late String userCommentHtml;
  // @JsonKey(name: 'cover_image')
  // late bool coverImage;


  UserDetails(
      this.userId,
      this.userStatus,
      this.userAccount,
      this.userName,
      this.userPremium,
      this.userWebpage,
      this.userCountry,
      this.userBirth,
      this.userComment,
      this.profileImg,
      this.location,
      this.userJobTxt,
      this.userSexTxt,
      this.userAge,
      this.userBirthTxt,
      this.isFollowed,
      this.isFollowing,
      this.isMyPixiv,
      this.isBlocked,
      this.isBlocking,
      this.acceptRequest,
      this.isOfficial,
      this.follows,
      this.social,
      this.userCommentHtml);

  factory UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}
