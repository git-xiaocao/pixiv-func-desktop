import 'package:json_annotation/json_annotation.dart';
import 'content.dart';

part 'ranking.g.dart';

@JsonSerializable(explicitToJson: true)
class Ranking{
  @JsonKey(name: 'contents')
  late List<Content> contents;
  @JsonKey(name: 'mode')
  late String mode;
  @JsonKey(name: 'content')
  late String content;
  @JsonKey(name: 'page')
  late int page;
  ///int 或 bool
  @JsonKey(name: 'prev')
  late dynamic prev;
  ///int 或 bool
  @JsonKey(name: 'next')
  late dynamic next;
  @JsonKey(name: 'date')
  late String date;
  @JsonKey(name: 'prev_date')
  late String prevDate;
  @JsonKey(name: 'next_date')
  late bool nextDate;
  @JsonKey(name: 'rank_total')
  late int rankTotal;


  Ranking(this.contents, this.mode, this.content, this.page, this.prev,
      this.next, this.date, this.prevDate, this.nextDate, this.rankTotal);

  factory Ranking.fromJson(Map<String, dynamic>  json) => _$RankingFromJson(json);

  Map<String, dynamic> toJson() => _$RankingToJson(this);
}
