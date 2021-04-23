import 'package:json_annotation/json_annotation.dart';
import 'illust.dart';

part 'recommend_tags.g.dart';

@JsonSerializable(explicitToJson: true)
class RecommendTags {
  List<Illust> illust;

  RecommendTags(this.illust);

  factory RecommendTags.fromJson(Map<String, dynamic> json) => _$RecommendTagsFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendTagsToJson(this);
}
