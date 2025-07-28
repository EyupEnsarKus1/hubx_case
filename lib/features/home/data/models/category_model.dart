import 'package:hubx_case/features/home/data/models/image_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable(explicitToJson: false)
class CategoryModel {
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
  });

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
