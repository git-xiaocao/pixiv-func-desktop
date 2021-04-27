import 'package:json_annotation/json_annotation.dart';
import 'recommend_method.dart';
import 'illust.dart';
part 'illust_related_body.g.dart';
@JsonSerializable(explicitToJson: true)
class IllustRelatedBody{
  List<int> related;//string
  @JsonKey(name: 'recommend_methods')
  Map<int,RecommendMethod> recommendMethods;//string
  List<Illust> illust;


  IllustRelatedBody(this.related, this.recommendMethods, this.illust);

  factory IllustRelatedBody.fromJson(Map<String, dynamic> json) => _$IllustRelatedBodyFromJson(json);

  Map<String, dynamic> toJson() => _$IllustRelatedBodyToJson(this);

}
