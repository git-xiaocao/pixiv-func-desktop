import 'package:json_annotation/json_annotation.dart';

part 'author_details.g.dart';

@JsonSerializable()
class AuthorDetails{
  @JsonKey(name: 'user_id')
  int userId;

  @JsonKey(name: 'user_name')
  String userName;

  @JsonKey(name: 'user_account')
  String userAccount;

  AuthorDetails(this.userId, this.userName, this.userAccount);

  factory AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDetailsToJson(this);
}
