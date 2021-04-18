// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Body _$BodyFromJson(Map<String, dynamic> json) {
  return Body(
    UserDetails.fromJson(json['user_details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BodyToJson(Body instance) => <String, dynamic>{
      'user_details': instance.userDetails.toJson(),
    };
