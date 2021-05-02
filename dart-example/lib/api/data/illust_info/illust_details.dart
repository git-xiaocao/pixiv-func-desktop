import 'package:json_annotation/json_annotation.dart';

import 'display_tag.dart';
import 'illust_image.dart';
import 'manga.dart';

part 'illust_details.g.dart';

@JsonSerializable(explicitToJson: true)
class IllustDetails {
  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'tags')
  List<String> tags;

  @JsonKey(name: 'illust_images')
  List<IllustImage> illustImages;

  ///有多个图的时候这个字段才不为null
  @JsonKey(name: 'manga_a')
  List<Manga>? mangaA;

  @JsonKey(name: 'display_tags')
  List<DisplayTag> displayTags;

  @JsonKey(name: 'tags_editable')
  bool tagsEditable;

  ///书签用户数量
  @JsonKey(name: 'bookmark_user_total')
  int bookmarkUserTotal;

  @JsonKey(name: 'url_s')
  String? urlS;

  @JsonKey(name: 'url_ss')
  String? urlSS;

  ///原图
  @JsonKey(name: 'url_big')
  String? urlBig;

  @JsonKey(name: 'url_placeholder')
  String? urlPlaceholder;

  ///书签id 没点收藏 就没有这个字段
  @JsonKey(name: 'bookmark_id')
  int? bookmarkId;

  @JsonKey(name: 'alt')
  String alt;

  @JsonKey(name:'upload_timestamp')
  int uploadTimestamp;

  ///这个作品有几张图
  @JsonKey(name: 'page_count')
  int pageCount;

  ///画师给这个作品的留言 大部分都是有的(偶尔发现某个作品没有,然后异常 调试的时候才发现....)
  @JsonKey(name: 'comment')
  String? comment;

  int id;

  String title;

  IllustDetails(
      this.url,
      this.tags,
      this.illustImages,
      this.mangaA,
      this.displayTags,
      this.tagsEditable,
      this.bookmarkUserTotal,
      this.urlS,
      this.urlSS,
      this.urlBig,
      this.urlPlaceholder,
      this.bookmarkId,
      this.alt,
      this.uploadTimestamp,
      this.pageCount,
      this.comment,
      this.id,
      this.title);

  factory IllustDetails.fromJson(Map<String, dynamic> json) =>
      _$IllustDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$IllustDetailsToJson(this);
}
