// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recommender _$RecommenderFromJson(Map<String, dynamic> json) {
  return Recommender(
    (json['recommendations'] as List<dynamic>).map((e) => int.parse(e as String)).toList(),
  );
}

Map<String, dynamic> _$RecommenderToJson(Recommender instance) =>
    <String, dynamic>{
      'recommendations': instance.recommendations,
    };
