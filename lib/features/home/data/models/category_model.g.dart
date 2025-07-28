// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    _CategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      publishedAt: json['publishedAt'] as String,
      title: json['title'] as String,
      rank: (json['rank'] as num).toInt(),
      image: ImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryModelToJson(_CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'title': instance.title,
      'rank': instance.rank,
      'image': instance.image,
    };

_CategoryListResponseModel _$CategoryListResponseModelFromJson(
  Map<String, dynamic> json,
) => _CategoryListResponseModel(
  data: (json['data'] as List<dynamic>)
      .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: CategoryMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CategoryListResponseModelToJson(
  _CategoryListResponseModel instance,
) => <String, dynamic>{'data': instance.data, 'meta': instance.meta};

_CategoryMetaModel _$CategoryMetaModelFromJson(Map<String, dynamic> json) =>
    _CategoryMetaModel(
      pagination: CategoryPaginationModel.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CategoryMetaModelToJson(_CategoryMetaModel instance) =>
    <String, dynamic>{'pagination': instance.pagination};

_CategoryPaginationModel _$CategoryPaginationModelFromJson(
  Map<String, dynamic> json,
) => _CategoryPaginationModel(
  page: (json['page'] as num).toInt(),
  pageSize: (json['pageSize'] as num).toInt(),
  pageCount: (json['pageCount'] as num).toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$CategoryPaginationModelToJson(
  _CategoryPaginationModel instance,
) => <String, dynamic>{
  'page': instance.page,
  'pageSize': instance.pageSize,
  'pageCount': instance.pageCount,
  'total': instance.total,
};
