// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  alternativeText: json['alternativeText'],
  caption: json['caption'],
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  formats: json['formats'],
  hash: json['hash'] as String,
  ext: json['ext'] as String,
  mime: json['mime'] as String,
  size: (json['size'] as num).toDouble(),
  url: json['url'] as String,
  previewUrl: json['previewUrl'],
  provider: json['provider'] as String,
  providerMetadata: json['provider_metadata'],
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'formats': instance.formats,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'provider_metadata': instance.providerMetadata,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
