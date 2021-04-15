// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ranking _$RankingFromJson(Map<String, dynamic> json) {
  return Ranking(
    (json['contents'] as List<dynamic>)
        .map((e) => Content.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['mode'] as String,
    json['content'] as String,
    json['page'] as int,
    json['prev'],
    json['next'],
    json['date'] as String,
    json['prev_date'] as String,
    json['next_date'] as bool,
    json['rank_total'] as int,
  );
}

Map<String, dynamic> _$RankingToJson(Ranking instance) => <String, dynamic>{
      'contents': instance.contents.map((e) => e.toJson()).toList(),
      'mode': instance.mode,
      'content': instance.content,
      'page': instance.page,
      'prev': instance.prev,
      'next': instance.next,
      'date': instance.date,
      'prev_date': instance.prevDate,
      'next_date': instance.nextDate,
      'rank_total': instance.rankTotal,
    };
