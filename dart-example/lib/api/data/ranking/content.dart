import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable(explicitToJson: true)
class Content{
  @JsonKey(name: 'title')
  late String title;
  @JsonKey(name: 'date')
  late String date;
  @JsonKey(name: 'tags')
  late List<String> tags;
  @JsonKey(name: 'url')
  late String url;
  @JsonKey(name: 'illust_type')
  late String illustType;
  @JsonKey(name: 'illust_book_style')
  late String illustBookStyle;
  @JsonKey(name: 'illust_page_count')
  late String illustPageCount;//有几张图
  @JsonKey(name: 'user_name')
  late String userName;
  @JsonKey(name: 'profile_img')
  late String profileImg;

  @JsonKey(name: 'illust_id')
  late int illustId;
  @JsonKey(name: 'width')
  late int width;
  @JsonKey(name: 'height')
  late int height;
  @JsonKey(name: 'user_id')
  late int userId;
  @JsonKey(name: 'rank')
  late int rank;
  @JsonKey(name: 'yes_rank')
  late int yesRank;
  @JsonKey(name: 'rating_count')
  late int ratingCount;
  @JsonKey(name: 'view_count')
  late int viewCount;
  @JsonKey(name: 'illust_upload_timestamp')
  late int illustUploadTimestamp;
  @JsonKey(name: 'attr')
  late String attr;
  @JsonKey(name: 'is_bookmarked')
  late bool isBookmarked;
  @JsonKey(name: 'bookmarkable')
  late bool bookmarkAble;


  Content(
      this.title,
      this.date,
      this.tags,
      this.url,
      this.illustType,
      this.illustBookStyle,
      this.illustPageCount,
      this.userName,
      this.profileImg,
      this.illustId,
      this.width,
      this.height,
      this.userId,
      this.rank,
      this.yesRank,
      this.ratingCount,
      this.viewCount,
      this.illustUploadTimestamp,
      this.attr,
      this.isBookmarked,
      this.bookmarkAble);

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}
