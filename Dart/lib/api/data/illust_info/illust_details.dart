import 'package:json_annotation/json_annotation.dart';

import 'display_tag.dart';
import 'illust_image.dart';
import 'manga.dart';

part 'illust_details.g.dart';

@JsonSerializable(explicitToJson: true)
class IllustDetails {
  @JsonKey(name: 'url')
  late String url;

  @JsonKey(name: 'tags')
  late List<String> tags;

  @JsonKey(name: 'illust_images')
  late List<IllustImage> illustImages;

  ///有多个图的时候这个字段才不为null
  @JsonKey(name: 'manga_a')
  late List<Manga>? mangaA;

  @JsonKey(name: 'display_tags')
  late List<DisplayTag> displayTags;

  @JsonKey(name: 'tags_editable')
  late bool tagsEditable;

  ///书签用户数量
  @JsonKey(name: 'bookmark_user_total')
  late int bookmarkUserTotal;

  @JsonKey(name: 'url_s')
  late String? urlS;

  @JsonKey(name: 'url_ss')
  late String? urlSS;

  ///原图
  @JsonKey(name: 'url_big')
  late String? urlBig;

  @JsonKey(name: 'url_placeholder')
  late String? urlPlaceholder;

  ///书签id 没点收藏 就没有这个字段
  @JsonKey(name: 'bookmark_id')
  late int? bookmarkId;

  @JsonKey(name: 'alt')
  late String alt;

  ///这个作品有几张图
  @JsonKey(name: 'page_count')
  late int pageCount;

  ///画师给这个作品的留言 大部分都是有的(偶尔发现某个作品没有,然后异常 调试的时候才发现....)
  @JsonKey(name: 'comment')
  late String? comment;

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
      this.pageCount,
      this.comment);

  factory IllustDetails.fromJson(Map<String, dynamic> json) =>
      _$IllustDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$IllustDetailsToJson(this);
}
