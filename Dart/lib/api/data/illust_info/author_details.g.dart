// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorDetails _$AuthorDetailsFromJson(Map<String, dynamic> json) {
  return AuthorDetails(
    json['user_id'] as String,
    json['user_status'] as String,
    json['user_account'] as String,
    json['user_name'] as String,
    json['user_premium'] as String,
    Map<String, String>.from(json['profile_img'] as Map),
    json['is_followed'] as bool,
    json['accept_request'] as bool,
  );
}

Map<String, dynamic> _$AuthorDetailsToJson(AuthorDetails instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_status': instance.userStatus,
      'user_account': instance.userAccount,
      'user_name': instance.userName,
      'user_premium': instance.userPremium,
      'profile_img': instance.profileImg,
      'is_followed': instance.isFollowed,
      'accept_request': instance.acceptRequest,
    };
