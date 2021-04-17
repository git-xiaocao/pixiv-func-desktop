// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    json['title'] as String,
    json['date'] as String,
    (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    json['url'] as String,
    json['illust_type'] as String,
    json['illust_book_style'] as String,
    json['illust_page_count'] as String,
    json['user_name'] as String,
    json['profile_img'] as String,
    json['illust_id'] as int,
    json['width'] as int,
    json['height'] as int,
    json['user_id'] as int,
    json['rank'] as int,
    json['yes_rank'] as int,
    json['rating_count'] as int,
    json['view_count'] as int,
    json['illust_upload_timestamp'] as int,
    json['attr'] as String,
    json['is_bookmarked'] as bool,
    json['bookmarkable'] as bool,
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
      'tags': instance.tags,
      'url': instance.url,
      'illust_type': instance.illustType,
      'illust_book_style': instance.illustBookStyle,
      'illust_page_count': instance.illustPageCount,
      'user_name': instance.userName,
      'profile_img': instance.profileImg,
      'illust_id': instance.illustId,
      'width': instance.width,
      'height': instance.height,
      'user_id': instance.userId,
      'rank': instance.rank,
      'yes_rank': instance.yesRank,
      'rating_count': instance.ratingCount,
      'view_count': instance.viewCount,
      'illust_upload_timestamp': instance.illustUploadTimestamp,
      'attr': instance.attr,
      'is_bookmarked': instance.isBookmarked,
      'bookmarkable': instance.bookmarkAble,
    };
