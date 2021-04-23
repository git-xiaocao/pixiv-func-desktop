import 'package:json_annotation/json_annotation.dart';
import 'illust.dart';

part 'recommend_by_tags.g.dart';

@JsonSerializable(explicitToJson: true)
class RecommendByTags{
  List<Illust> illust;

  RecommendByTags(this.illust);

  factory RecommendByTags.fromJson(Map<String, dynamic> json) => _$RecommendByTagsFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendByTagsToJson(this);
}
