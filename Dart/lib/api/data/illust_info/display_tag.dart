import 'package:json_annotation/json_annotation.dart';

part 'display_tag.g.dart';

@JsonSerializable(explicitToJson: true)
class DisplayTag{
  @JsonKey(name: 'tag')
  late String tag;
  @JsonKey(name: 'is_pixpedia_article_exists')
  late bool isPixpediaArticleExists;
  @JsonKey(name: 'translation')
  late String? translation;//翻译
  @JsonKey(name: 'set_by_author')
  late bool setByAuthor;
  @JsonKey(name: 'is_locked')
  late bool isLocked;
  @JsonKey(name: 'is_deletable')
  late bool isDeletable;


  DisplayTag(this.tag, this.isPixpediaArticleExists, this.translation,
      this.setByAuthor, this.isLocked, this.isDeletable);

  factory DisplayTag.fromJson(Map<String, dynamic> json) => _$DisplayTagFromJson(json);

  Map<String, dynamic> toJson() => _$DisplayTagToJson(this);
}
