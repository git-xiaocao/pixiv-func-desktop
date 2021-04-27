// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingBody _$RankingBodyFromJson(Map<String, dynamic> json) {
  return RankingBody(
    json['rankingDate'] as String,
    (json['ranking'] as List<dynamic>)
        .map((e) => Rank.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RankingBodyToJson(RankingBody instance) =>
    <String, dynamic>{
      'rankingDate': instance.rankingDate,
      'ranking': instance.ranking.map((e) => e.toJson()).toList(),
    };
