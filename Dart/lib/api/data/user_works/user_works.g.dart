// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_works.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWorks _$UserWorksFromJson(Map<String, dynamic> json) {
  return UserWorks(
    json['error'] as bool,
    json['message'] as String,
    UserWorksBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserWorksToJson(UserWorks instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body.toJson(),
    };
