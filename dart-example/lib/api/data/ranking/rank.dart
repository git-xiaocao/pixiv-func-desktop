import 'package:json_annotation/json_annotation.dart';

part 'rank.g.dart';

@JsonSerializable(explicitToJson: true)
class Rank {
  int illustId; //string
  int rank;

  Rank(this.illustId, this.rank);
  factory Rank.fromJson(Map<String, dynamic> json) => _$RankFromJson(json);

  Map<String, dynamic> toJson() => _$RankToJson(this);
}
