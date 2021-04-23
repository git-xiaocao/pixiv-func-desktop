import 'package:json_annotation/json_annotation.dart';
import 'illust.dart';

part 'search_body.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchBody{
  List<Illust?> illusts;
  int total;
  int lastPage;

  SearchBody(this.illusts, this.total, this.lastPage);

  factory SearchBody.fromJson(Map<String, dynamic> json) =>
      _$SearchBodyFromJson(json);

  Map<String, dynamic> toJson() => _$SearchBodyToJson(this);
}
