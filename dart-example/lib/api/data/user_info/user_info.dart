import 'package:json_annotation/json_annotation.dart';
import 'user_info_body.dart';

part 'user_info.g.dart';

@JsonSerializable(explicitToJson: true)
class UserInfo {
  @JsonKey(name: 'error')
  late bool error;
  @JsonKey(name: 'message')
  late String message;
  @JsonKey(name: 'body')
  late Body? body;

  UserInfo(this.error, this.message, this.body);

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserInfoToJson(this);
}
