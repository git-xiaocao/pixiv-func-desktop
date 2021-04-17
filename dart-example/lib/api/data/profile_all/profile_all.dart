import 'package:json_annotation/json_annotation.dart';
import 'profile_all_body.dart';

part 'profile_all.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileAll{
  @JsonKey(name: 'error')
  late bool error;
  @JsonKey(name:'message')
  late String message;
  @JsonKey(name:'body')
  late ProfileAllBody body;


  ProfileAll(this.error, this.message, this.body);

  factory ProfileAll.fromJson(Map<String, dynamic> json) => _$ProfileAllFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileAllToJson(this);
}
