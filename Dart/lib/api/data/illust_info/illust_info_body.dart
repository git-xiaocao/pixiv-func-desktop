import 'package:json_annotation/json_annotation.dart';
import 'author_details.dart';
import 'illust_details.dart';

part 'illust_info_body.g.dart';

@JsonSerializable(explicitToJson: true)
class IllustInfoBody {
  @JsonKey(name: 'illust_details')
  late IllustDetails illustDetails;
  @JsonKey(name: 'author_details')
  late AuthorDetails authorDetails;

  IllustInfoBody(this.illustDetails, this.authorDetails);

  factory IllustInfoBody.fromJson(Map<String, dynamic> json) =>
      _$IllustInfoBodyFromJson(json);

  Map<String, dynamic> toJson() => _$IllustInfoBodyToJson(this);
}
