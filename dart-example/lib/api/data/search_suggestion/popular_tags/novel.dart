import 'package:json_annotation/json_annotation.dart';

part 'novel.g.dart';

@JsonSerializable(explicitToJson: true)
class Novel {
  String tag;
  List<int> ids;

  Novel(this.tag, this.ids);

  factory Novel.fromJson(Map<String, dynamic> json) => _$NovelFromJson(json);

  Map<String, dynamic> toJson() => _$NovelToJson(this);

}
