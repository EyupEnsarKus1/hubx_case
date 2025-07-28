import 'package:json_annotation/json_annotation.dart';
part 'image_model.g.dart';

@JsonSerializable(explicitToJson: false)
class ImageModel {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "alternativeText")
  final dynamic alternativeText;
  @JsonKey(name: "caption")
  final dynamic caption;
  @JsonKey(name: "width")
  final int width;
  @JsonKey(name: "height")
  final int height;
  @JsonKey(name: "formats")
  final dynamic formats;
  @JsonKey(name: "hash")
  final String hash;
  @JsonKey(name: "ext")
  final String ext;
  @JsonKey(name: "mime")
  final String mime;
  @JsonKey(name: "size")
  final double size;
  @JsonKey(name: "url")
  final String url;
  @JsonKey(name: "previewUrl")
  final dynamic previewUrl;
  @JsonKey(name: "provider")
  final String provider;
  @JsonKey(name: "provider_metadata")
  final dynamic providerMetadata;
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;

  ImageModel({
    required this.id,
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.providerMetadata,
    required this.createdAt,
    required this.updatedAt,
  });

  ImageModel copyWith({
    int? id,
    String? name,
    dynamic alternativeText,
    dynamic caption,
    int? width,
    int? height,
    dynamic formats,
    String? hash,
    String? ext,
    String? mime,
    double? size,
    String? url,
    dynamic previewUrl,
    String? provider,
    dynamic providerMetadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => ImageModel(
    id: id ?? this.id,
    name: name ?? this.name,
    alternativeText: alternativeText ?? this.alternativeText,
    caption: caption ?? this.caption,
    width: width ?? this.width,
    height: height ?? this.height,
    formats: formats ?? this.formats,
    hash: hash ?? this.hash,
    ext: ext ?? this.ext,
    mime: mime ?? this.mime,
    size: size ?? this.size,
    url: url ?? this.url,
    previewUrl: previewUrl ?? this.previewUrl,
    provider: provider ?? this.provider,
    providerMetadata: providerMetadata ?? this.providerMetadata,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
