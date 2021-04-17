import 'package:json_annotation/json_annotation.dart';

part 'profile_all_body.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileAllBody{
  @JsonKey(name: 'illusts')
  late List<int> illusts;
  @JsonKey(name: 'manga')
  late List<int> manga;


  ProfileAllBody(this.illusts, this.manga);

  factory ProfileAllBody.fromJson(Map<String, dynamic> json) => _$ProfileAllBodyFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileAllBodyToJson(this);
}
