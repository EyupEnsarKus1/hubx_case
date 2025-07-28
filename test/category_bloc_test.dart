import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:hubx_case/features/home/domain/usescases/get_categories_use_case.dart';
import 'package:hubx_case/features/home/domain/entities/category_entity.dart';
import 'package:hubx_case/features/home/domain/entities/image_entity.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_event.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_state.dart';
import 'package:hubx_case/core/utils/generic_use_case.dart';
import 'package:hubx_case/core/network/dependy_injection/injection.dart';

// Mock sınıfları
class MockGetCategoriesUseCase extends Mock implements GetCategoriesUseCase {}

void main() {
  group('CategoryBloc Test', () {
    late CategoryBloc categoryBloc;
    late MockGetCategoriesUseCase mockGetCategoriesUseCase;

    // Test verileri
    final testDateTime = DateTime(2025, 7, 28);
    final testCategories = [
      Category(
        id: 1,
        name: 'Test Category 1',
        createdAt: testDateTime,
        updatedAt: testDateTime,
        publishedAt: testDateTime,
        title: 'Test Title 1',
        rank: 1,
        image: ImageEntity(
          id: 1,
          name: 'test-image-1.jpg',
          alternativeText: 'Test Image 1',
          caption: 'Test Caption 1',
          width: 100,
          height: 100,
          formats: null,
          hash: 'test-hash-1',
          ext: '.jpg',
          mime: 'image/jpeg',
          size: 1000.0,
          url: 'https://example.com/test-image-1.jpg',
          previewUrl: null,
          provider: 'local',
          providerMetadata: null,
          createdAt: testDateTime,
          updatedAt: testDateTime,
        ),
      ),
      Category(
        id: 2,
        name: 'Test Category 2',
        createdAt: testDateTime,
        updatedAt: testDateTime,
        publishedAt: testDateTime,
        title: 'Test Title 2',
        rank: 2,
        image: ImageEntity(
          id: 2,
          name: 'test-image-2.jpg',
          alternativeText: 'Test Image 2',
          caption: 'Test Caption 2',
          width: 200,
          height: 200,
          formats: null,
          hash: 'test-hash-2',
          ext: '.jpg',
          mime: 'image/jpeg',
          size: 2000.0,
          url: 'https://example.com/test-image-2.jpg',
          previewUrl: null,
          provider: 'local',
          providerMetadata: null,
          createdAt: testDateTime,
          updatedAt: testDateTime,
        ),
      ),
    ];

    setUpAll(() {
      registerFallbackValue(NoParams());
    });

    setUp(() {
      mockGetCategoriesUseCase = MockGetCategoriesUseCase();
      // GetIt'e mock'u kaydet
      getIt.registerSingleton<GetCategoriesUseCase>(mockGetCategoriesUseCase);
      categoryBloc = CategoryBloc();
    });

    tearDown(() {
      categoryBloc.close();
      // GetIt'ten kayıtları temizle
      if (getIt.isRegistered<GetCategoriesUseCase>()) {
        getIt.unregister<GetCategoriesUseCase>();
      }
    });

    group('LoadCategoriesEvent', () {
      blocTest<CategoryBloc, CategoryState>(
        'başlangıçta CategoryInitial state\'inde olmalı',
        build: () => categoryBloc,
        expect: () => [],
      );

      blocTest<CategoryBloc, CategoryState>(
        'LoadCategoriesEvent gönderildiğinde başarılı durumda doğru state\'leri emit etmeli',
        build: () {
          when(() => mockGetCategoriesUseCase(any())).thenAnswer((_) async => testCategories);
          return categoryBloc;
        },
        act: (bloc) => bloc.add(const LoadCategoriesEvent()),
        expect: () => [
          const CategoryLoading(),
          CategoryLoaded(categories: testCategories),
        ],
      );

      blocTest<CategoryBloc, CategoryState>(
        'LoadCategoriesEvent gönderildiğinde hata durumunda CategoryError state\'i emit etmeli',
        build: () {
          when(() => mockGetCategoriesUseCase(any())).thenThrow(Exception('Test error'));
          return categoryBloc;
        },
        act: (bloc) => bloc.add(const LoadCategoriesEvent()),
        expect: () => [
          const CategoryLoading(),
          const CategoryError(message: 'Exception: Test error'),
        ],
      );

      blocTest<CategoryBloc, CategoryState>(
        'LoadCategoriesEvent gönderildiğinde boş liste döndüğünde doğru state\'i emit etmeli',
        build: () {
          when(() => mockGetCategoriesUseCase(any())).thenAnswer((_) async => <Category>[]);
          return categoryBloc;
        },
        act: (bloc) => bloc.add(const LoadCategoriesEvent()),
        expect: () => [
          const CategoryLoading(),
          const CategoryLoaded(categories: []),
        ],
      );
    });

    group('RefreshCategoriesEvent', () {
      blocTest<CategoryBloc, CategoryState>(
        'RefreshCategoriesEvent gönderildiğinde CategoryLoaded state\'inden başlayarak doğru state\'leri emit etmeli',
        build: () {
          when(() => mockGetCategoriesUseCase(any())).thenAnswer((_) async => testCategories);
          return categoryBloc;
        },
        seed: () => CategoryLoaded(categories: testCategories),
        act: (bloc) => bloc.add(const RefreshCategoriesEvent()),
        expect: () => [
          CategoryRefreshing(categories: testCategories),
          CategoryLoaded(categories: testCategories),
        ],
      );

      blocTest<CategoryBloc, CategoryState>(
        'RefreshCategoriesEvent gönderildiğinde CategoryInitial state\'inden başlayarak doğru state\'leri emit etmeli',
        build: () {
          when(() => mockGetCategoriesUseCase(any())).thenAnswer((_) async => testCategories);
          return categoryBloc;
        },
        act: (bloc) => bloc.add(const RefreshCategoriesEvent()),
        expect: () => [
          const CategoryLoading(),
          CategoryLoaded(categories: testCategories),
        ],
      );

      blocTest<CategoryBloc, CategoryState>(
        'RefreshCategoriesEvent gönderildiğinde hata durumunda CategoryError state\'i emit etmeli',
        build: () {
          when(() => mockGetCategoriesUseCase(any())).thenThrow(Exception('Test refresh error'));
          return categoryBloc;
        },
        seed: () => CategoryLoaded(categories: testCategories),
        act: (bloc) => bloc.add(const RefreshCategoriesEvent()),
        expect: () => [
          CategoryRefreshing(categories: testCategories),
          const CategoryError(message: 'Exception: Test refresh error'),
        ],
      );

      blocTest<CategoryBloc, CategoryState>(
        'RefreshCategoriesEvent gönderildiğinde CategoryLoading state\'inden başlayarak doğru state\'leri emit etmeli',
        build: () {
          when(() => mockGetCategoriesUseCase(any())).thenAnswer((_) async => testCategories);
          return categoryBloc;
        },
        seed: () => const CategoryLoading(),
        act: (bloc) => bloc.add(const RefreshCategoriesEvent()),
        expect: () => [
          CategoryLoaded(categories: testCategories),
        ],
      );
    });

    group('State Tests', () {
      test('CategoryInitial state\'i doğru props\'lara sahip olmalı', () {
        const state = CategoryInitial();
        expect(state.props, isEmpty);
      });

      test('CategoryLoading state\'i doğru props\'lara sahip olmalı', () {
        const state = CategoryLoading();
        expect(state.props, isEmpty);
      });

      test('CategoryLoaded state\'i doğru props\'lara sahip olmalı', () {
        final state = CategoryLoaded(categories: testCategories);
        expect(state.props, [testCategories]);
      });

      test('CategoryError state\'i doğru props\'lara sahip olmalı', () {
        const state = CategoryError(message: 'Test error');
        expect(state.props, ['Test error']);
      });

      test('CategoryRefreshing state\'i doğru props\'lara sahip olmalı', () {
        final state = CategoryRefreshing(categories: testCategories);
        expect(state.props, [testCategories]);
      });
    });

    group('Event Tests', () {
      test('LoadCategoriesEvent doğru props\'lara sahip olmalı', () {
        const event = LoadCategoriesEvent();
        expect(event.props, isEmpty);
      });

      test('RefreshCategoriesEvent doğru props\'lara sahip olmalı', () {
        const event = RefreshCategoriesEvent();
        expect(event.props, isEmpty);
      });
    });

    group('Integration Tests', () {
      blocTest<CategoryBloc, CategoryState>(
        'Ardışık event\'ler doğru şekilde işlenmeli',
        build: () {
          when(() => mockGetCategoriesUseCase(any())).thenAnswer((_) async => testCategories);
          return categoryBloc;
        },
        act: (bloc) async {
          bloc.add(const LoadCategoriesEvent());
          await Future.delayed(const Duration(milliseconds: 100));
          bloc.add(const RefreshCategoriesEvent());
        },
        expect: () => [
          const CategoryLoading(),
          CategoryLoaded(categories: testCategories),
          CategoryRefreshing(categories: testCategories),
          CategoryLoaded(categories: testCategories),
        ],
      );
    });

    group('Mock Verification Tests', () {
      test('LoadCategoriesEvent gönderildiğinde use case doğru parametre ile çağrılmalı', () async {
        when(() => mockGetCategoriesUseCase(any())).thenAnswer((_) async => testCategories);

        categoryBloc.add(const LoadCategoriesEvent());
        await Future.delayed(const Duration(milliseconds: 100));

        verify(() => mockGetCategoriesUseCase(any())).called(1);
      });

      test('RefreshCategoriesEvent gönderildiğinde use case doğru parametre ile çağrılmalı', () async {
        when(() => mockGetCategoriesUseCase(any())).thenAnswer((_) async => testCategories);

        categoryBloc.add(const RefreshCategoriesEvent());
        await Future.delayed(const Duration(milliseconds: 100));

        verify(() => mockGetCategoriesUseCase(any())).called(1);
      });
    });
  });
}
