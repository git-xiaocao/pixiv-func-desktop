import 'package:json_annotation/json_annotation.dart';

import 'author_details.dart';

part 'illust.g.dart';

@JsonSerializable(explicitToJson: true)
class Illust {
  String? url;
  List<String> tags;
  String alt;
  @JsonKey(name: 'url_s')
  String urlS;
  @JsonKey(name: 'url_sm')
  String urlSM;
  @JsonKey(name: 'url_w')
  String urlW;
  @JsonKey(name: 'url_ss')
  String? urlSS;
  @JsonKey(name: 'url_big')
  String? urlBig;
  @JsonKey(name: 'url_placeholder')
  String? urlPlaceholder;
  @JsonKey(name: 'upload_timestamp')
  int uploadTimestamp;
  int id; //string
  @JsonKey(name: 'user_id')
  int userId; //string
  String title;
  int width; //string
  int height; //string
  @JsonKey(name: 'page_count')
  int pageCount; //string
  String? comment;
  @JsonKey(name: 'author_details')
  AuthorDetails authorDetails;

  Illust(
    this.url,
    this.tags,
    this.alt,
    this.urlS,
    this.urlSM,
    this.urlW,
    this.urlSS,
    this.urlBig,
    this.urlPlaceholder,
    this.uploadTimestamp,
    this.id,
    this.userId,
    this.title,
    this.width,
    this.height,
    this.pageCount,
    this.comment,
    this.authorDetails,
  );

  factory Illust.fromJson(Map<String, dynamic> json) => _$IllustFromJson(json);

  Map<String, dynamic> toJson() => _$IllustToJson(this);
}
