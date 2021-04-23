import 'package:json_annotation/json_annotation.dart';

import 'popular_tags/popular_tags.dart';
import 'recommend_by_tags/recommend_by_tags.dart';
import 'recommend_tags/recommend_tags.dart';
import 'tag_translation/tag_translation.dart';
import 'thumbnail/thumbnail.dart';

part 'search_suggestion_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchSuggestionBody {
  PopularTags popularTags;
  RecommendTags recommendTags;
  RecommendByTags recommendByTags;
  Map<String,TagTranslation> tagTranslation;
  List<Thumbnail> thumbnails;

  SearchSuggestionBody(this.popularTags, this.recommendTags,
      this.recommendByTags, this.tagTranslation, this.thumbnails);

  factory SearchSuggestionBody.fromJson(Map<String, dynamic> json) => _$SearchSuggestionBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SearchSuggestionBodyToJson(this);
}
