import 'package:json_annotation/json_annotation.dart';
import 'bookmark_data/bookmark_data.dart';
part 'thumbnail.g.dart';

@JsonSerializable(explicitToJson: true)
class Thumbnail {
  int id; //string
  String title;
  String url;
  String description;
  List<String> tags;
  int userId;//string
  String userName;
  int width;
  int height;
  bool isBookmarkable;
  BookmarkData? bookmarkData;
  String alt;
  String createDate;
  String updateDate;
  String profileImageUrl;

  Thumbnail(
      this.id,
      this.title,
      this.url,
      this.description,
      this.tags,
      this.userId,
      this.userName,
      this.width,
      this.height,
      this.isBookmarkable,
      this.bookmarkData,
      this.alt,
      this.createDate,
      this.updateDate,
      this.profileImageUrl);

  factory Thumbnail.fromJson(Map<String, dynamic> json) => _$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
}
