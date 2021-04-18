import 'package:json_annotation/json_annotation.dart';
import 'bookmark_data.dart';

part 'works.g.dart';

@JsonSerializable(explicitToJson: true)
class Works{
  @JsonKey(name: 'id')
  late int id;
  @JsonKey(name: 'title')
  late String title;
  @JsonKey(name: 'url')
  late String url;
  @JsonKey(name: 'description')
  late String description;
  @JsonKey(name: 'tags')
  late List<String> tags;
  @JsonKey(name: 'userId')
  late int userId;
  @JsonKey(name: 'userName')
  late String userName;
  @JsonKey(name: 'width')
  late int width;
  @JsonKey(name: 'height')
  late int height;
  @JsonKey(name: 'pageCount')
  late int pageCount;
  @JsonKey(name: 'isBookmarkable')
  late bool isBookmarkable;
  @JsonKey(name: 'bookmarkData')
  late BookmarkData? bookmarkData;
  @JsonKey(name: 'alt')
  late String alt;
  @JsonKey(name: 'createDate')
  late String createDate;
  @JsonKey(name: 'updateDate')
  late String updateDate;


  Works(
      this.id,
      this.title,
      this.url,
      this.description,
      this.tags,
      this.userId,
      this.userName,
      this.width,
      this.height,
      this.pageCount,
      this.isBookmarkable,
      this.bookmarkData,
      this.alt,
      this.createDate,
      this.updateDate);

  factory Works.fromJson(Map<String, dynamic> json) =>
      _$WorksFromJson(json);

  Map<String, dynamic> toJson() => _$WorksToJson(this);
}
