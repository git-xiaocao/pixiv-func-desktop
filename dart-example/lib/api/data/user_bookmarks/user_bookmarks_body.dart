import 'package:json_annotation/json_annotation.dart';

import 'works.dart';

part 'user_bookmarks_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UserBookmarksBody {
  @JsonKey(name: 'works')
  late List<Works> works;
  @JsonKey(name: 'total')
  late int total;


  UserBookmarksBody(this.works, this.total);

  factory UserBookmarksBody.fromJson(Map<String, dynamic> json) =>
      _$UserBookmarksBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UserBookmarksBodyToJson(this);
}
