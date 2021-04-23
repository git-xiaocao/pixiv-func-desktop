import 'package:json_annotation/json_annotation.dart';
import 'search_body.dart';

part 'search.g.dart';

@JsonSerializable(explicitToJson: true)
class Search{
  bool error;
  String message;
  SearchBody? body;

  Search(this.error, this.message, this.body);

  factory Search.fromJson(Map<String, dynamic> json) =>
      _$SearchFromJson(json);

  Map<String, dynamic> toJson() => _$SearchToJson(this);
}
