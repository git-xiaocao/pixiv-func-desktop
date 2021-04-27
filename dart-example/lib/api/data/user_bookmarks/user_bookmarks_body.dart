import 'package:json_annotation/json_annotation.dart';

import 'work.dart';

part 'user_bookmarks_body.g.dart';

@JsonSerializable(explicitToJson: true)
class UserBookmarksBody {
  @JsonKey(name: 'works')
  late List<Work> works;
  @JsonKey(name: 'total')
  late int total;


  UserBookmarksBody(this.works, this.total);

  factory UserBookmarksBody.fromJson(Map<String, dynamic> json) =>
      _$UserBookmarksBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UserBookmarksBodyToJson(this);
}
