import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hubx_case/features/home/domain/entities/question_entity.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel extends Question with _$QuestionModel {
  const QuestionModel._()
    : super(
        id: 0,
        title: '',
        subtitle: '',
        imageUri: '',
        uri: '',
        order: 0,
      );

  const factory QuestionModel({
    required int id,
    required String title,
    required String subtitle,
    @JsonKey(name: 'image_uri') required String imageUri,
    required String uri,
    required int order,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}

@freezed
class QuestionListResponseModel with _$QuestionListResponseModel {
  const QuestionListResponseModel._();

  const factory QuestionListResponseModel({
    required List<QuestionModel> questions,
  }) = _QuestionListResponseModel;

  factory QuestionListResponseModel.fromJson(Map<String, dynamic> json) => _$QuestionListResponseModelFromJson(json);

  factory QuestionListResponseModel.fromJsonList(List<dynamic> jsonList) => QuestionListResponseModel(
    questions: jsonList.map((json) => QuestionModel.fromJson(json as Map<String, dynamic>)).toList(),
  );

  @override
  List<QuestionModel> get questions => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
