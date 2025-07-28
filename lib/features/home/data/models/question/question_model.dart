import 'package:hubx_case/features/home/domain/entities/question_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question_model.g.dart';

@JsonSerializable(explicitToJson: false)
class QuestionModel extends Question {
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
  }) : super(
         id: id,
         title: title,
         subtitle: subtitle,
         imageUri: imageUri,
         uri: uri,
         order: order,
       );

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

class QuestionListResponseModel {
  final List<QuestionModel> questions;

  QuestionListResponseModel({required this.questions});

  factory QuestionListResponseModel.fromJsonList(List<dynamic> jsonList) {
    return QuestionListResponseModel(
      questions: jsonList.map((json) => QuestionModel.fromJson(json as Map<String, dynamic>)).toList(),
    );
  }

  List<Map<String, dynamic>> toJson() {
    return questions.map((question) => question.toJson()).toList();
  }
}
