import 'package:json_annotation/json_annotation.dart';
import 'works.dart';

part 'user_works_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UserWorksBody {
  @JsonKey(name: 'works')
  late Map<String,Works> works;

  UserWorksBody(this.works);

  factory UserWorksBody.fromJson(Map<String, dynamic> json) =>
      _$UserWorksBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UserWorksBodyToJson(this);

}
