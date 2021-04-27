// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ranking _$RankingFromJson(Map<String, dynamic> json) {
  return Ranking(
    json['error'] as bool,
    json['message'] as String,
    json['body'] is! Map
        ? null
        : RankingBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RankingToJson(Ranking instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'body': instance.body?.toJson(),
    };
