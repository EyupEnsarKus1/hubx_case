import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable {
  final int id;
  final String name;
  final String? alternativeText;
  final String? caption;
  final int width;
  final int height;
  final dynamic formats;
  final String hash;
  final String ext;
  final String mime;
  final double size;
  final String url;
  final String? previewUrl;
  final String provider;
  final dynamic providerMetadata;
  final String createdAt;
  final String updatedAt;

  const ImageEntity({
    required this.id,
    required this.name,
    this.alternativeText,
    this.caption,
    required this.width,
    required this.height,
    this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    this.previewUrl,
    required this.provider,
    this.providerMetadata,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        alternativeText,
        caption,
        width,
        height,
        formats,
        hash,
        ext,
        mime,
        size,
        url,
        previewUrl,
        provider,
        providerMetadata,
        createdAt,
        updatedAt,
      ];
} 