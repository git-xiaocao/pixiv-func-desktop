import 'package:json_annotation/json_annotation.dart';
import 'work.dart';

part 'user_works_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UserWorksBody {
  @JsonKey(name: 'works')
  late Map<int,Work> works;

  UserWorksBody(this.works);

  factory UserWorksBody.fromJson(Map<String, dynamic> json) =>
      _$UserWorksBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UserWorksBodyToJson(this);

}
