import 'package:json_annotation/json_annotation.dart';

part 'illust.g.dart';

@JsonSerializable(explicitToJson: true)
class Illust{
  @JsonKey(name: 'id')
  late int id;
  @JsonKey(name: 'title')
  late String title;
  @JsonKey(name: 'illustType')
  late int illustType;
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
  ///可收藏?
  @JsonKey(name: 'isBookmarkable')
  late bool isBookmarkable;
  @JsonKey(name: 'alt')
  late String alt;
  @JsonKey(name: 'createDate')
  late String createDate;
  @JsonKey(name: 'updateDate')
  late String updateDate;
  @JsonKey(name: 'isUnlisted')
  late bool isUnlisted;
  @JsonKey(name: 'isMasked')
  late bool isMasked;
  @JsonKey(name: 'profileImageUrl')
  late String profileImageUrl;


  Illust(
      this.id,
      this.title,
      this.illustType,
      this.url,
      this.description,
      this.tags,
      this.userId,
      this.userName,
      this.width,
      this.height,
      this.pageCount,
      this.isBookmarkable,
      this.alt,
      this.createDate,
      this.updateDate,
      this.isUnlisted,
      this.isMasked,
      this.profileImageUrl);

  factory Illust.fromJson(Map<String, dynamic> json) => _$IllustFromJson(json);

  Map<String, dynamic> toJson() => _$IllustToJson(this);
}
