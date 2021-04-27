// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust_related.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IllustRelated _$IllustRelatedFromJson(Map<String, dynamic> json) {
  return IllustRelated(
    json['error'] as bool,
    json['message'] as String,
    json['body'] == null
        ? null
        : IllustRelatedBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IllustRelatedToJson(IllustRelated instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
