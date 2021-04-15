import 'package:json_annotation/json_annotation.dart';

part 'illust.g.dart';

@JsonSerializable(explicitToJson: true)
class Illust {
  @JsonKey(name: 'url')
  late String? url;
  @JsonKey(name: 'tags')
  late List<String> tags;
  @JsonKey(name: 'is_mypixiv')
  late bool isMyPixiv;
  @JsonKey(name: 'is_private')
  late bool isPrivate;
  @JsonKey(name: 'is_howto')
  late bool isHowto;
  @JsonKey(name: 'is_original')
  late bool isOriginal;
  @JsonKey(name: 'alt')
  late String alt;
  @JsonKey(name: 'url_s')
  late String? urlS;
  @JsonKey(name: 'url_sm')
  late String? urlSm;
  @JsonKey(name: 'url_w')
  late String? urlW;
  @JsonKey(name: 'url_ss')
  late String? urlSs;
  @JsonKey(name: 'url_big')
  late String? urlBig;
  @JsonKey(name: 'url_placeholder')
  late String? urlPlaceholder;
  @JsonKey(name: 'upload_timestamp')
  late int uploadTimestamp;
  @JsonKey(name: 'id')
  late String id;
  @JsonKey(name: 'user_id')
  late String userId;
  @JsonKey(name: 'title')
  late String title;
  @JsonKey(name: 'width')
  late String width;
  @JsonKey(name: 'height')
  late String height;
  @JsonKey(name: 'page_count')
  late String pageCount;
  @JsonKey(name: 'comment')
  late String comment;


  Illust(
      this.url,
      this.tags,
      this.isMyPixiv,
      this.isPrivate,
      this.isHowto,
      this.isOriginal,
      this.alt,
      this.urlS,
      this.urlSm,
      this.urlW,
      this.urlSs,
      this.urlBig,
      this.urlPlaceholder,
      this.uploadTimestamp,
      this.id,
      this.userId,
      this.title,
      this.width,
      this.height,
      this.pageCount,
      this.comment);

  factory Illust.fromJson(Map<String, dynamic> json) => _$IllustFromJson(json);

  Map<String, dynamic> toJson() => _$IllustToJson(this);
}
