import 'package:json_annotation/json_annotation.dart';

part 'bookmark_data.g.dart';

@JsonSerializable()
class BookmarkData{
  late int id;
  late bool private;

  BookmarkData(this.id, this.private);
  factory BookmarkData.fromJson(Map<String, dynamic> json) =>
      _$BookmarkDataFromJson(json);

  Map<String, dynamic> toJson() => _$BookmarkDataToJson(this);
}
