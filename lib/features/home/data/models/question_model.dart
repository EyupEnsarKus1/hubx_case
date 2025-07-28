import 'package:json_annotation/json_annotation.dart';

part 'question_model.g.dart';

@JsonSerializable(explicitToJson: false)
class QuestionModel {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "subtitle")
  final String subtitle;
  @JsonKey(name: "image_uri")
  final String imageUri;
  @JsonKey(name: "uri")
  final String uri;
  @JsonKey(name: "order")
  final int order;

  QuestionModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUri,
    required this.uri,
    required this.order,
  });

  QuestionModel copyWith({
    int? id,
    String? title,
    String? subtitle,
    String? imageUri,
    String? uri,
    int? order,
  }) => QuestionModel(
    id: id ?? this.id,
    title: title ?? this.title,
    subtitle: subtitle ?? this.subtitle,
    imageUri: imageUri ?? this.imageUri,
    uri: uri ?? this.uri,
    order: order ?? this.order,
  );

  factory QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}
