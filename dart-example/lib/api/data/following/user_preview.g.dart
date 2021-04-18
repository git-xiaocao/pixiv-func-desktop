// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPreview _$UserPreviewFromJson(Map<String, dynamic> json) {
  return UserPreview(
    int.parse(json['userId'] as String),
    json['userName'] as String,
    json['profileImageUrl'] as String,
    json['userComment'] as String,
    json['following'] as bool,
    json['followed'] as bool,
    json['isBlocking'] as bool,
    json['isMypixiv'] as bool,
    (json['illusts'] as List<dynamic>)
        .map((e) => Illust.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['acceptRequest'] as bool,
  );
}

Map<String, dynamic> _$UserPreviewToJson(UserPreview instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'profileImageUrl': instance.profileImageUrl,
      'userComment': instance.userComment,
      'following': instance.following,
      'followed': instance.followed,
      'isBlocking': instance.isBlocking,
      'isMypixiv': instance.isMyPixiv,
      'illusts': instance.illusts.map((e) => e.toJson()).toList(),
      'acceptRequest': instance.acceptRequest,
    };
