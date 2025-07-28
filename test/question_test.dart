import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:hubx_case/features/home/data/models/question_model.dart';

void main() {
  group('Questions API Test', () {
    late Dio dio;

    setUp(() {
      dio = Dio(
        BaseOptions(
          baseUrl: 'https://dummy-api-jtg6bessta-ey.a.run.app',
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        ),
      );
    });

    test('API\'den questions verilerini başarıyla alabilmeli', () async {
      try {
        final response = await dio.get('/getQuestions');

        expect(response.statusCode, 200);

        List<dynamic> jsonData;
        if (response.data is String) {
          jsonData = jsonDecode(response.data);
        } else {
          jsonData = response.data;
        }

        expect(jsonData, isA<List>());

        final questionListResponse = QuestionListResponseModel.fromJsonList(jsonData);

        expect(questionListResponse.questions, isNotEmpty);

        final firstQuestion = questionListResponse.questions.first;
        expect(firstQuestion.id, isNotNull);
        expect(firstQuestion.title, isNotEmpty);
        expect(firstQuestion.subtitle, isNotEmpty);
        expect(firstQuestion.imageUri, isNotEmpty);
        expect(firstQuestion.uri, isNotEmpty);
        expect(firstQuestion.order, isNotNull);
      } catch (e) {
        print('❌ API hatası: $e');
        rethrow;
      }
    });
  });
}
