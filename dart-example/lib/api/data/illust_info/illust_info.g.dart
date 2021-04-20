// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IllustInfo _$IllustInfoFromJson(Map<String, dynamic> json) {
  return IllustInfo(
    json['error'] as bool,
    json['message'] as String,
    json['body'] is! Map
        ? null
        : IllustInfoBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IllustInfoToJson(IllustInfo instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
