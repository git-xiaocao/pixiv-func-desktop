// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_suggestion_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSuggestionBody _$SearchSuggestionBodyFromJson(Map<String, dynamic> json) {
  return SearchSuggestionBody(
    PopularTags.fromJson(json['popularTags'] as Map<String, dynamic>),
    RecommendTags.fromJson(json['recommendTags'] as Map<String, dynamic>),
    RecommendByTags.fromJson(json['recommendByTags'] as Map<String, dynamic>),
    (json['tagTranslation'] as Map<String, dynamic>).map(
          (k, e) => MapEntry(k, TagTranslation.fromJson(e as Map<String, dynamic>)),
    ),
    (json['thumbnails'] as List<dynamic>)
        .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$SearchSuggestionBodyToJson(
        SearchSuggestionBody instance) =>
    <String, dynamic>{
      'popularTags': instance.popularTags.toJson(),
      'recommendTags': instance.recommendTags.toJson(),
      'recommendByTags': instance.recommendByTags.toJson(),
      'tagTranslation':
      instance.tagTranslation.map((k, e) => MapEntry(k, e.toJson())),
      'thumbnails': instance.thumbnails.map((e) => e.toJson()).toList(),
    };
