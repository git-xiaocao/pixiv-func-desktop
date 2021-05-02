// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendMethod _$RecommendMethodFromJson(Map<String, dynamic> json) {
  return RecommendMethod(
    (json['methods'] as List<dynamic>).map((e) => e as String).toList(),
    (json['score'] as num).toDouble(),
    (json['seed_illust_ids'] as List<dynamic>).map((e){
      return e is int ? e : int.parse(e as String);
    }).toList(),
    json['recommend_list_id'] as String,
    json['bandit_info'] as String,
  );
}

Map<String, dynamic> _$RecommendMethodToJson(RecommendMethod instance) =>
    <String, dynamic>{
      'methods': instance.methods,
      'score': instance.score,
      'seed_illust_ids': instance.seedIllustIds,
      'recommend_list_id': instance.recommendListId,
      'bandit_info': instance.banditInfo,
    };
