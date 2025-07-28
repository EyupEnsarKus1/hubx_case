import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx_case/features/home/domain/entities/image_entity.dart';

part 'image_model.freezed.dart';
part 'image_model.g.dart';

@freezed
class ImageModel extends ImageEntity with _$ImageModel {
  const ImageModel._()
    : super(
        id: 0,
        name: '',
        width: 0,
        height: 0,
        hash: '',
        ext: '',
        mime: '',
        size: 0.0,
        url: '',
        provider: '',
        createdAt: '',
        updatedAt: '',
      );

  const factory ImageModel({
    required int id,
    required String name,
    @JsonKey(name: 'alternativeText') String? alternativeText,
    String? caption,
    required int width,
    required int height,
    dynamic formats,
    required String hash,
    required String ext,
    required String mime,
    required double size,
    required String url,
    @JsonKey(name: 'previewUrl') String? previewUrl,
    required String provider,
    @JsonKey(name: 'provider_metadata') dynamic providerMetadata,
    required String createdAt,
    required String updatedAt,
  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
