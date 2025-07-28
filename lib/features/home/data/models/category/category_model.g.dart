// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      title: json['title'] as String,
      rank: (json['rank'] as num).toInt(),
      image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'publishedAt': instance.publishedAt.toIso8601String(),
      'title': instance.title,
      'rank': instance.rank,
      'image': instance.image,
    };

CategoryListResponseModel _$CategoryListResponseModelFromJson(
  Map<String, dynamic> json,
) => CategoryListResponseModel(
  data: (json['data'] as List<dynamic>)
      .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : ResponseMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CategoryListResponseModelToJson(
  CategoryListResponseModel instance,
) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
  'meta': instance.meta?.toJson(),
};

ResponseMeta _$ResponseMetaFromJson(Map<String, dynamic> json) => ResponseMeta(
  pagination: json['pagination'] == null
      ? null
      : PaginationMeta.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ResponseMetaToJson(ResponseMeta instance) =>
    <String, dynamic>{'pagination': instance.pagination?.toJson()};

PaginationMeta _$PaginationMetaFromJson(Map<String, dynamic> json) =>
    PaginationMeta(
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      pageCount: (json['pageCount'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationMetaToJson(PaginationMeta instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };
