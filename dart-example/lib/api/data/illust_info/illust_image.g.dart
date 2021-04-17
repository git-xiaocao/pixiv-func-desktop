// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'illust_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IllustImage _$IllustImageFromJson(Map<String, dynamic> json) {
  return IllustImage(
    int.parse(json['illust_image_width'] as String),
    int.parse(json['illust_image_height'] as String),
  );
}

Map<String, dynamic> _$IllustImageToJson(IllustImage instance) =>
    <String, dynamic>{
      'illust_image_width': instance.illustImageWidth,
      'illust_image_height': instance.illustImageHeight,
    };
