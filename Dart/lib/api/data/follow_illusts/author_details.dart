import 'package:json_annotation/json_annotation.dart';
part 'author_details.g.dart';

@JsonSerializable(explicitToJson: true)
class AuthorDetails{
  @JsonKey(name: 'user_id')
  late String userId;
  @JsonKey(name: 'user_name')
  late String userName;
  @JsonKey(name: 'user_account')
  late String userAccount;


  AuthorDetails(this.userId, this.userName, this.userAccount);

  factory AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorDetailsToJson(this);
}
