import 'package:json_annotation/json_annotation.dart';
import 'illust.dart';

part 'follow_illusts_body.g.dart';

@JsonSerializable(explicitToJson: true)
class FollowIllustsBody{
  @JsonKey(name: 'illusts')
  late List<Illust> illusts;
  @JsonKey(name: 'total')
  late int total;
  @JsonKey(name: 'lastPage')
  late int lastPage;

  FollowIllustsBody(this.total, this.lastPage);

  factory FollowIllustsBody.fromJson(Map<String, dynamic> json) => _$FollowIllustsBodyFromJson(json);

  Map<String, dynamic> toJson() => _$FollowIllustsBodyToJson(this);
}
