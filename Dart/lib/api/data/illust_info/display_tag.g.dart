// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'display_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisplayTag _$DisplayTagFromJson(Map<String, dynamic> json) {
  return DisplayTag(
    json['tag'] as String,
    json['is_pixpedia_article_exists'] as bool,
    json['translation'] as String?,
    json['set_by_author'] as bool,
    json['is_locked'] as bool,
    json['is_deletable'] as bool,
  );
}

Map<String, dynamic> _$DisplayTagToJson(DisplayTag instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'is_pixpedia_article_exists': instance.isPixpediaArticleExists,
      'translation': instance.translation,
      'set_by_author': instance.setByAuthor,
      'is_locked': instance.isLocked,
      'is_deletable': instance.isDeletable,
    };
