// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Search _$SearchFromJson(Map<String, dynamic> json) {
  return Search(
    json['error'] as bool,
    json['message'] as String,
    json['body'] == null
        ? null
        : SearchBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchToJson(Search instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
