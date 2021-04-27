import 'package:json_annotation/json_annotation.dart';

import 'rank.dart';

part 'ranking_body.g.dart';

@JsonSerializable(explicitToJson: true)
class RankingBody {
  String rankingDate;
  List<Rank> ranking;

  RankingBody(this.rankingDate, this.ranking);
  factory RankingBody.fromJson(Map<String, dynamic> json) => _$RankingBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RankingBodyToJson(this);
}
