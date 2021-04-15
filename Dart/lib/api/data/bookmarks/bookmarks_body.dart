import 'package:json_annotation/json_annotation.dart';
import 'bookmark.dart';

part 'bookmarks_body.g.dart';

@JsonSerializable(explicitToJson: true)
class BookmarksBody{
  @JsonKey(name: 'bookmarks')
  List<Bookmark> bookmarks;

  @JsonKey(name: 'total')
  int total;

  @JsonKey(name: 'lastPage')
  int lastPage;

  BookmarksBody(this.bookmarks, this.total, this.lastPage);

  factory BookmarksBody.fromJson(Map<String, dynamic> json) => _$BookmarksBodyFromJson(json);

  Map<String, dynamic> toJson() => _$BookmarksBodyToJson(this);
}
