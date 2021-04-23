import 'package:json_annotation/json_annotation.dart';

part 'tag_translation.g.dart';

@JsonSerializable(explicitToJson: true)
class TagTranslation{
  String? en;
  String? ko;
  String? zh;
  String? zh_tw;
  String? romaji;

  TagTranslation(this.en, this.ko, this.zh, this.zh_tw, this.romaji);

  factory TagTranslation.fromJson(Map<String, dynamic> json) => _$TagTranslationFromJson(json);

  Map<String, dynamic> toJson() => _$TagTranslationToJson(this);
}
