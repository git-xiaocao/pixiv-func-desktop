// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rank _$RankFromJson(Map<String, dynamic> json) {
  return Rank(
    int.parse(json['illustId'] as String),
    json['rank'] as int,
  );
}

Map<String, dynamic> _$RankToJson(Rank instance) => <String, dynamic>{
      'illustId': instance.illustId,
      'rank': instance.rank,
    };
