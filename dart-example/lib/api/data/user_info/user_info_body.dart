import 'package:json_annotation/json_annotation.dart';
import 'user_details.dart';

part 'user_info_body.g.dart';

@JsonSerializable(explicitToJson: true)
class Body {
  @JsonKey(name: 'user_details')
  late UserDetails userDetails;

  Body(this.userDetails);

  factory Body.fromJson(Map<String, dynamic> json) => _$BodyFromJson(json);

  Map<String, dynamic> toJson() => _$BodyToJson(this);


}
