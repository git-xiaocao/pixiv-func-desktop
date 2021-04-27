// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_works_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWorksBody _$UserWorksBodyFromJson(Map<String, dynamic> json) {
  return UserWorksBody(
    (json['works'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), Work.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$UserWorksBodyToJson(UserWorksBody instance) =>
    <String, dynamic>{
      'works': instance.works.map((k, e) => MapEntry(k, e.toJson())),
    };
