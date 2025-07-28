import 'package:equatable/equatable.dart';

class ImageEntity extends Equatable {
  final int id;
  final String name;
  final dynamic alternativeText;
  final dynamic caption;
  final int width;
  final int height;
  final dynamic formats;
  final String hash;
  final String ext;
  final String mime;
  final double size;
  final String url;
  final dynamic previewUrl;
  final String provider;
  final dynamic providerMetadata;
  final DateTime createdAt;
  final DateTime updatedAt;

  const ImageEntity({
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