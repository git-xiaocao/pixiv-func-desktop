// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_all_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileAllBody _$ProfileAllBodyFromJson(Map<String, dynamic> json) {
  var illusts = <int>[];

  if (json['illusts'] is Map<String, dynamic>)
    (json['illusts'] as Map<String, dynamic>).forEach((k, e) {
      illusts.add(int.parse(k));
    });

  var manga = <int>[];

  if (json['manga'] is Map<String, dynamic>)
    (json['manga'] as Map<String, dynamic>).forEach((k, e) {
      manga.add(int.parse(k));
    });
  return ProfileAllBody(
    illusts,
    manga,
  );
}

Map<String, dynamic> _$ProfileAllBodyToJson(ProfileAllBody instance) =>
    <String, dynamic>{
      'illusts': instance.illusts,
      'manga': instance.manga,
    };
