// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust_info_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IllustInfoBody _$IllustInfoBodyFromJson(Map<String, dynamic> json) {
  return IllustInfoBody(
    IllustDetails.fromJson(json['illust_details'] as Map<String, dynamic>),
    AuthorDetails.fromJson(json['author_details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$IllustInfoBodyToJson(IllustInfoBody instance) =>
    <String, dynamic>{
      'illust_details': instance.illustDetails.toJson(),
      'author_details': instance.authorDetails.toJson(),
    };
