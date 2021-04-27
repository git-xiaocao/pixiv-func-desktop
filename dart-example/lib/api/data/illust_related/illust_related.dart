import 'package:json_annotation/json_annotation.dart';

import 'illust_related_body.dart';
part 'illust_related.g.dart';
@JsonSerializable(explicitToJson: true)
class IllustRelated{
  bool error;
  String message;
  IllustRelatedBody? body;

  IllustRelated(this.error, this.message, this.body);

  factory IllustRelated.fromJson(Map<String, dynamic> json) => _$IllustRelatedFromJson(json);

  Map<String, dynamic> toJson() => _$IllustRelatedToJson(this);

}
