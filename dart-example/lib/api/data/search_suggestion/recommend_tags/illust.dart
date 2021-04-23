import 'package:json_annotation/json_annotation.dart';

part 'illust.g.dart';

@JsonSerializable(explicitToJson: true)
class Illust{
  String tag;
  List<int> ids;

  Illust(this.tag, this.ids);

  factory Illust.fromJson(Map<String, dynamic> json) => _$IllustFromJson(json);

  Map<String, dynamic> toJson() => _$IllustToJson(this);
}
