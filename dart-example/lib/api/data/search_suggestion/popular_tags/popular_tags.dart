import 'package:json_annotation/json_annotation.dart';
import 'illust.dart';
import 'novel.dart';

part 'popular_tags.g.dart';

@JsonSerializable(explicitToJson: true)
class PopularTags{
  List<Illust> illust;
  List<Novel> novel;

  PopularTags(this.illust, this.novel);

  factory PopularTags.fromJson(Map<String, dynamic> json) => _$PopularTagsFromJson(json);

  Map<String, dynamic> toJson() => _$PopularTagsToJson(this);
}
