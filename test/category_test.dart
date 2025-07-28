import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:dio/dio.dart';
import 'package:hubx_case/features/home/data/models/category_model.dart';

void main() {
  group('Categories API Test', () {
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

    test('API\'den categories verilerini başarıyla alabilmeli', () async {
      try {
        final response = await dio.get('/getCategories');

        expect(response.statusCode, 200);

        // Response'u JSON'a decode et
        Map<String, dynamic> jsonData;
        if (response.data is String) {
          jsonData = jsonDecode(response.data);
        } else {
          jsonData = response.data;
        }

        expect(jsonData, isA<Map<String, dynamic>>());

        final categoryResponse = CategoryListResponseModel.fromJson(jsonData);

        expect(categoryResponse.data, isNotEmpty);
        expect(categoryResponse.meta, isNotNull);

        // İlk category'yi kontrol et
        final firstCategory = categoryResponse.data.first;
        expect(firstCategory.id, isNotNull);
        expect(firstCategory.name, isNotEmpty);
        expect(firstCategory.title, isNotEmpty);
        expect(firstCategory.rank, isNotNull);
        expect(firstCategory.image, isNotNull);
        expect(firstCategory.image.url, isNotEmpty);

        // Meta bilgilerini kontrol et
        expect(categoryResponse.meta.pagination.total, isNotNull);
        expect(categoryResponse.meta.pagination.page, isNotNull);

        print('✅ Categories API başarıyla çalışıyor! ${categoryResponse.data.length} category alındı');
        print('İlk category: ${firstCategory.title}');
        print('Total categories: ${categoryResponse.meta.pagination.total}');
      } catch (e) {
        print('❌ Categories API hatası: $e');
        rethrow;
      }
    });
  });
}
