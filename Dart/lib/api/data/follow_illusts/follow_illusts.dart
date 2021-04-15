import 'package:json_annotation/json_annotation.dart';
import 'follow_illusts_body.dart';

part 'follow_illusts.g.dart';

@JsonSerializable(explicitToJson: true)
class FollowIllusts{

  @JsonKey(name: 'error')
  late bool error;
  @JsonKey(name: 'message')
  late String message;
  @JsonKey(name: 'body')
  late FollowIllustsBody? body;

  FollowIllusts(this.error, this.message, this.body);

  factory FollowIllusts.fromJson(Map<String, dynamic> json) => _$FollowIllustsFromJson(json);

  Map<String, dynamic> toJson() => _$FollowIllustsToJson(this);
}
