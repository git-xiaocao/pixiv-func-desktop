// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSuggestion _$SearchSuggestionFromJson(Map<String, dynamic> json) {
  return SearchSuggestion(
    json['error'] as bool,
    json['body'] == null
        ? null
        : SearchSuggestionBody.fromJson(json['body'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchSuggestionToJson(SearchSuggestion instance) =>
    <String, dynamic>{
      'error': instance.error,
      'body': instance.body?.toJson(),
    };
