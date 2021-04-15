import 'package:json_annotation/json_annotation.dart';

part 'manga.g.dart';

@JsonSerializable(explicitToJson: true)
class Manga{
  late int page;
  late String url;
  late String url_small;
  late String url_big;


  Manga(this.page, this.url, this.url_small, this.url_big);

  factory Manga.fromJson(Map<String, dynamic> json) => _$MangaFromJson(json);

  Map<String, dynamic> toJson() => _$MangaToJson(this);
}
