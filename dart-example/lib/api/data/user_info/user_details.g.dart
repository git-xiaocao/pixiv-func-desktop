// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return UserDetails(
    json['user_id'] as String,
    json['user_status'] as String,
    json['user_account'] as String,
    json['user_name'] as String,
    json['user_premium'] as String,
    json['user_webpage'] as String,
    json['user_country'] as String?,
    json['user_birth'] as String?,
    json['user_comment'] as String,
    ProfileImg.fromJson(json['profile_img'] as Map<String, dynamic>),
    json['location'] as String?,
    json['user_job_txt'] as String?,
    json['user_sex_txt'] as String?,
    json['user_age'] as int?,
    json['user_birth_txt'] as String?,
    json['is_followed'] as bool,
    json['is_following'] as bool,
    json['is_mypixiv'] as bool,
    json['is_blocked'] as bool,
    json['is_blocking'] as bool,
    json['accept_request'] as bool,
    json['is_official'] as bool,
    json['follows'] as int,
    json['social'] is! Map<String, dynamic>
        ? null
        : (json['social'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, Map<String, String>.from(e as Map)),
          ),
    json['user_comment_html'] as String,
  );
}

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_status': instance.userStatus,
      'user_account': instance.userAccount,
      'user_name': instance.userName,
      'user_premium': instance.userPremium,
      'user_webpage': instance.userWebpage,
      'user_country': instance.userCountry,
      'user_birth': instance.userBirth,
      'user_comment': instance.userComment,
      'profile_img': instance.profileImg.toJson(),
      'location': instance.location,
      'user_job_txt': instance.userJobTxt,
      'user_sex_txt': instance.userSexTxt,
      'user_age': instance.userAge,
      'user_birth_txt': instance.userBirthTxt,
      'is_followed': instance.isFollowed,
      'is_following': instance.isFollowing,
      'is_mypixiv': instance.isMyPixiv,
      'is_blocked': instance.isBlocked,
      'is_blocking': instance.isBlocking,
      'accept_request': instance.acceptRequest,
      'is_official': instance.isOfficial,
      'follows': instance.follows,
      'social': instance.social,
      'user_comment_html': instance.userCommentHtml,
    };
