import 'package:json_annotation/json_annotation.dart';
import 'bookmark_add_body.dart';

part 'bookmark_add.g.dart';
@JsonSerializable(explicitToJson: true)
class BookmarkAdd{
  late bool error;
  late String message;
  late BookmarkAddBody? body;


  BookmarkAdd(this.error, this.message, this.body);

  factory BookmarkAdd.fromJson(Map<String, dynamic> json) => _$BookmarkAddFromJson(json);

  Map<String, dynamic> toJson() => _$BookmarkAddToJson(this);

}
