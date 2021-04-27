import 'package:json_annotation/json_annotation.dart';

import 'ranking_body.dart';

part 'ranking.g.dart';

@JsonSerializable(explicitToJson: true)
class Ranking {
  bool error;
  String message;
  RankingBody? body;

  Ranking(this.error, this.message, this.body);

  factory Ranking.fromJson(Map<String, dynamic> json) =>
      _$RankingFromJson(json);

  Map<String, dynamic> toJson() => _$RankingToJson(this);
}
