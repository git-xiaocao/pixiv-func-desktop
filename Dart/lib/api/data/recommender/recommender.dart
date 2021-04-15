import 'package:json_annotation/json_annotation.dart';

part 'recommender.g.dart';

@JsonSerializable(explicitToJson: true)
class Recommender {
  @JsonKey(name: 'recommendations')
  late List<int> recommendations;

  Recommender(this.recommendations);

  factory Recommender.fromJson(Map<String, dynamic> json) =>
      _$RecommenderFromJson(json);


  Map<String, dynamic> toJson() => _$RecommenderToJson(this);
}
