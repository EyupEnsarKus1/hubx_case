import 'package:hubx_case/features/home/data/models/image/image_model.dart';
import 'package:hubx_case/features/home/domain/entities/category_entity.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable(explicitToJson: false)
class CategoryModel extends Category {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "createdAt")
  final DateTime createdAt;
  @JsonKey(name: "updatedAt")
  final DateTime updatedAt;
  @JsonKey(name: "publishedAt")
  final DateTime publishedAt;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "rank")
  final int rank;
  @JsonKey(name: "image")
  final ImageModel image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.title,
    required this.rank,
    required this.image,
  }) : super(
         id: id,
         name: name,
         createdAt: createdAt,
         updatedAt: updatedAt,
         publishedAt: publishedAt,
         title: title,
         rank: rank,
         image: image,
       );

  CategoryModel copyWith({
    int? id,
    String? name,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? publishedAt,
    String? title,
    int? rank,
    ImageModel? image,
  }) => CategoryModel(
    id: id ?? this.id,
    name: name ?? this.name,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    publishedAt: publishedAt ?? this.publishedAt,
    title: title ?? this.title,
    rank: rank ?? this.rank,
    image: image ?? this.image,
  );

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CategoryListResponseModel {
  @JsonKey(name: "data")
  final List<CategoryModel> data;

  @JsonKey(name: "meta")
  final ResponseMeta? meta;

  CategoryListResponseModel({
    required this.data,
    this.meta,
  });

  factory CategoryListResponseModel.fromJson(Map<String, dynamic> json) => _$CategoryListResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryListResponseModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ResponseMeta {
  @JsonKey(name: "pagination")
  final PaginationMeta? pagination;

  ResponseMeta({this.pagination});

  factory ResponseMeta.fromJson(Map<String, dynamic> json) => _$ResponseMetaFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseMetaToJson(this);
}

@JsonSerializable(explicitToJson: false)
class PaginationMeta {
  @JsonKey(name: "page")
  final int page;

  @JsonKey(name: "pageSize")
  final int pageSize;

  @JsonKey(name: "pageCount")
  final int pageCount;

  @JsonKey(name: "total")
  final int total;

  PaginationMeta({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory PaginationMeta.fromJson(Map<String, dynamic> json) => _$PaginationMetaFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationMetaToJson(this);
}
