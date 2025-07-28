import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx_case/features/home/domain/entities/category_entity.dart';
import 'package:hubx_case/features/home/data/models/image_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const CategoryModel._();

  const factory CategoryModel({
    required int id,
    required String name,
    required String createdAt,
    required String updatedAt,
    required String publishedAt,
    required String title,
    required int rank,
    required ImageModel image,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  // Category entity'ye dönüştürme metodu
  Category toEntity() {
    return Category(
      id: id,
      name: name,
      createdAt: createdAt,
      updatedAt: updatedAt,
      publishedAt: publishedAt,
      title: title,
      rank: rank,
      image: image, // ImageModel ImageEntity'yi extend ettiği için otomatik cast olur
    );
  }

  @override
  // TODO: implement createdAt
  String get createdAt => throw UnimplementedError();

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement image
  ImageModel get image => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  // TODO: implement publishedAt
  String get publishedAt => throw UnimplementedError();

  @override
  // TODO: implement rank
  int get rank => throw UnimplementedError();

  @override
  // TODO: implement title
  String get title => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement updatedAt
  String get updatedAt => throw UnimplementedError();
}

@freezed
class CategoryListResponseModel with _$CategoryListResponseModel {
  const CategoryListResponseModel._();

  const factory CategoryListResponseModel({
    required List<CategoryModel> data,
    required CategoryMetaModel meta,
  }) = _CategoryListResponseModel;

  factory CategoryListResponseModel.fromJson(Map<String, dynamic> json) => _$CategoryListResponseModelFromJson(json);

  @override
  // TODO: implement data
  List<CategoryModel> get data => throw UnimplementedError();

  @override
  // TODO: implement meta
  CategoryMetaModel get meta => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

@freezed
class CategoryMetaModel with _$CategoryMetaModel {
  const CategoryMetaModel._();

  const factory CategoryMetaModel({
    required CategoryPaginationModel pagination,
  }) = _CategoryMetaModel;

  factory CategoryMetaModel.fromJson(Map<String, dynamic> json) => _$CategoryMetaModelFromJson(json);

  @override
  // TODO: implement pagination
  CategoryPaginationModel get pagination => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}

@freezed
class CategoryPaginationModel with _$CategoryPaginationModel {
  const CategoryPaginationModel._();

  const factory CategoryPaginationModel({
    required int page,
    required int pageSize,
    required int pageCount,
    required int total,
  }) = _CategoryPaginationModel;

  factory CategoryPaginationModel.fromJson(Map<String, dynamic> json) => _$CategoryPaginationModelFromJson(json);

  @override
  // TODO: implement page
  int get page => throw UnimplementedError();

  @override
  // TODO: implement pageCount
  int get pageCount => throw UnimplementedError();

  @override
  // TODO: implement pageSize
  int get pageSize => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement total
  int get total => throw UnimplementedError();
}
