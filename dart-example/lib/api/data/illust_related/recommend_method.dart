import 'package:json_annotation/json_annotation.dart';

part 'recommend_method.g.dart';

@JsonSerializable(explicitToJson: true)
class RecommendMethod{
  List<String> methods;
  double score;
  @JsonKey(name: 'seed_illust_ids')
  List<int> seedIllustIds;//string
  @JsonKey(name: 'recommend_list_id')
  String recommendListId;
  @JsonKey(name: 'bandit_info')
  String banditInfo;

  RecommendMethod(this.methods, this.score, this.seedIllustIds,
      this.recommendListId, this.banditInfo);

  factory RecommendMethod.fromJson(Map<String, dynamic> json) => _$RecommendMethodFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendMethodToJson(this);

}
