import 'package:json_annotation/json_annotation.dart';
import 'search_suggestion_body.dart';

part 'search_suggestion.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchSuggestion {
  bool error;
  SearchSuggestionBody? body;

  SearchSuggestion(this.error, this.body);

  factory SearchSuggestion.fromJson(Map<String, dynamic> json) => _$SearchSuggestionFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSuggestionToJson(this);
}
