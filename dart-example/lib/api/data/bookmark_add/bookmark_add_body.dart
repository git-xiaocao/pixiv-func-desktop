import 'package:json_annotation/json_annotation.dart';

part 'bookmark_add_body.g.dart';

@JsonSerializable(explicitToJson: true)
class BookmarkAddBody{
  @JsonKey(name: 'last_bookmark_id')
  late int? lastBookmarkId;

  BookmarkAddBody(this.lastBookmarkId);

  ///另一个字段叫 stacc_status_id 没啥用
  factory BookmarkAddBody.fromJson(Map<String, dynamic> json) => _$BookmarkAddBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BookmarkAddBodyToJson(this);

}
