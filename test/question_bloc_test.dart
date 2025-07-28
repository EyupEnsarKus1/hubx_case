import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:hubx_case/features/home/domain/usescases/get_questions_use_case.dart';
import 'package:hubx_case/features/home/domain/entities/question_entity.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_bloc.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_event.dart';
import 'package:hubx_case/features/home/presentation/blocs/questions_bloc/question_state.dart';
import 'package:hubx_case/core/utils/generic_use_case.dart';
import 'package:hubx_case/core/network/dependy_injection/injection.dart';

// Mock sınıfları
class MockGetQuestionsUseCase extends Mock implements GetQuestionsUseCase {}

void main() {
  group('QuestionBloc Test', () {
    late QuestionBloc questionBloc;
    late MockGetQuestionsUseCase mockGetQuestionsUseCase;

    // Test verileri
    final testQuestions = [
      const Question(
        id: 1,
        title: 'Test Question 1',
        subtitle: 'Test Subtitle 1',
        imageUri: 'https://example.com/test-image-1.jpg',
        uri: 'https://example.com/test-uri-1',
        order: 1,
      ),
      const Question(
        id: 2,
        title: 'Test Question 2',
        subtitle: 'Test Subtitle 2',
        imageUri: 'https://example.com/test-image-2.jpg',
        uri: 'https://example.com/test-uri-2',
        order: 2,
      ),
      const Question(
        id: 3,
        title: 'Test Question 3',
        subtitle: 'Test Subtitle 3',
        imageUri: 'https://example.com/test-image-3.jpg',
        uri: 'https://example.com/test-uri-3',
        order: 3,
      ),
    ];

    setUpAll(() {
      registerFallbackValue(NoParams());
    });

    setUp(() {
      mockGetQuestionsUseCase = MockGetQuestionsUseCase();
      // GetIt'e mock'u kaydet
      getIt.registerSingleton<GetQuestionsUseCase>(mockGetQuestionsUseCase);
      questionBloc = QuestionBloc();
    });

    tearDown(() {
      questionBloc.close();
      // GetIt'ten kayıtları temizle
      if (getIt.isRegistered<GetQuestionsUseCase>()) {
        getIt.unregister<GetQuestionsUseCase>();
      }
    });

    group('LoadQuestionsEvent', () {
      blocTest<QuestionBloc, QuestionState>(
        'başlangıçta QuestionInitial state\'inde olmalı',
        build: () => questionBloc,
        expect: () => [],
      );

      blocTest<QuestionBloc, QuestionState>(
        'LoadQuestionsEvent gönderildiğinde başarılı durumda doğru state\'leri emit etmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenAnswer((_) async => testQuestions);
          return questionBloc;
        },
        act: (bloc) => bloc.add(const LoadQuestionsEvent()),
        expect: () => [
          const QuestionLoading(),
          QuestionLoaded(questions: testQuestions),
        ],
      );

      blocTest<QuestionBloc, QuestionState>(
        'LoadQuestionsEvent gönderildiğinde hata durumunda QuestionError state\'i emit etmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenThrow(Exception('Test error'));
          return questionBloc;
        },
        act: (bloc) => bloc.add(const LoadQuestionsEvent()),
        expect: () => [
          const QuestionLoading(),
          const QuestionError(message: 'Exception: Test error'),
        ],
      );

      blocTest<QuestionBloc, QuestionState>(
        'LoadQuestionsEvent gönderildiğinde boş liste döndüğünde doğru state\'i emit etmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenAnswer((_) async => <Question>[]);
          return questionBloc;
        },
        act: (bloc) => bloc.add(const LoadQuestionsEvent()),
        expect: () => [
          const QuestionLoading(),
          const QuestionLoaded(questions: []),
        ],
      );
    });

    group('RefreshQuestionsEvent', () {
      blocTest<QuestionBloc, QuestionState>(
        'RefreshQuestionsEvent gönderildiğinde QuestionLoaded state\'inden başlayarak doğru state\'leri emit etmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenAnswer((_) async => testQuestions);
          return questionBloc;
        },
        seed: () => QuestionLoaded(questions: testQuestions),
        act: (bloc) => bloc.add(const RefreshQuestionsEvent()),
        expect: () => [
          QuestionRefreshing(questions: testQuestions),
          QuestionLoaded(questions: testQuestions),
        ],
      );

      blocTest<QuestionBloc, QuestionState>(
        'RefreshQuestionsEvent gönderildiğinde QuestionInitial state\'inden başlayarak doğru state\'leri emit etmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenAnswer((_) async => testQuestions);
          return questionBloc;
        },
        act: (bloc) => bloc.add(const RefreshQuestionsEvent()),
        expect: () => [
          const QuestionLoading(),
          QuestionLoaded(questions: testQuestions),
        ],
      );

      blocTest<QuestionBloc, QuestionState>(
        'RefreshQuestionsEvent gönderildiğinde hata durumunda QuestionError state\'i emit etmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenThrow(Exception('Test refresh error'));
          return questionBloc;
        },
        seed: () => QuestionLoaded(questions: testQuestions),
        act: (bloc) => bloc.add(const RefreshQuestionsEvent()),
        expect: () => [
          QuestionRefreshing(questions: testQuestions),
          const QuestionError(message: 'Exception: Test refresh error'),
        ],
      );

      blocTest<QuestionBloc, QuestionState>(
        'RefreshQuestionsEvent gönderildiğinde QuestionLoading state\'inden başlayarak doğru state\'leri emit etmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenAnswer((_) async => testQuestions);
          return questionBloc;
        },
        seed: () => const QuestionLoading(),
        act: (bloc) => bloc.add(const RefreshQuestionsEvent()),
        expect: () => [
          QuestionLoaded(questions: testQuestions),
        ],
      );
    });

    group('State Tests', () {
      test('QuestionInitial state\'i doğru props\'lara sahip olmalı', () {
        const state = QuestionInitial();
        expect(state.props, isEmpty);
      });

      test('QuestionLoading state\'i doğru props\'lara sahip olmalı', () {
        const state = QuestionLoading();
        expect(state.props, isEmpty);
      });

      test('QuestionLoaded state\'i doğru props\'lara sahip olmalı', () {
        final state = QuestionLoaded(questions: testQuestions);
        expect(state.props, [testQuestions]);
      });

      test('QuestionError state\'i doğru props\'lara sahip olmalı', () {
        const state = QuestionError(message: 'Test error');
        expect(state.props, ['Test error']);
      });

      test('QuestionRefreshing state\'i doğru props\'lara sahip olmalı', () {
        final state = QuestionRefreshing(questions: testQuestions);
        expect(state.props, [testQuestions]);
      });
    });

    group('Event Tests', () {
      test('LoadQuestionsEvent doğru props\'lara sahip olmalı', () {
        const event = LoadQuestionsEvent();
        expect(event.props, isEmpty);
      });

      test('RefreshQuestionsEvent doğru props\'lara sahip olmalı', () {
        const event = RefreshQuestionsEvent();
        expect(event.props, isEmpty);
      });
    });

    group('Integration Tests', () {
      blocTest<QuestionBloc, QuestionState>(
        'Ardışık event\'ler doğru şekilde işlenmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenAnswer((_) async => testQuestions);
          return questionBloc;
        },
        act: (bloc) async {
          bloc.add(const LoadQuestionsEvent());
          await Future.delayed(const Duration(milliseconds: 100));
          bloc.add(const RefreshQuestionsEvent());
        },
        expect: () => [
          const QuestionLoading(),
          QuestionLoaded(questions: testQuestions),
          QuestionRefreshing(questions: testQuestions),
          QuestionLoaded(questions: testQuestions),
        ],
      );
    });

    group('Mock Verification Tests', () {
      test('LoadQuestionsEvent gönderildiğinde use case doğru parametre ile çağrılmalı', () async {
        when(() => mockGetQuestionsUseCase(any()))
            .thenAnswer((_) async => testQuestions);

        questionBloc.add(const LoadQuestionsEvent());
        await Future.delayed(const Duration(milliseconds: 100));

        verify(() => mockGetQuestionsUseCase(any())).called(1);
      });

      test('RefreshQuestionsEvent gönderildiğinde use case doğru parametre ile çağrılmalı', () async {
        when(() => mockGetQuestionsUseCase(any()))
            .thenAnswer((_) async => testQuestions);

        questionBloc.add(const RefreshQuestionsEvent());
        await Future.delayed(const Duration(milliseconds: 100));

        verify(() => mockGetQuestionsUseCase(any())).called(1);
      });
    });

    group('Edge Case Tests', () {
      blocTest<QuestionBloc, QuestionState>(
        'Çoklu ardışık refresh işlemleri doğru şekilde işlenmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenAnswer((_) async => testQuestions);
          return questionBloc;
        },
        seed: () => QuestionLoaded(questions: testQuestions),
        act: (bloc) async {
          bloc.add(const RefreshQuestionsEvent());
          await Future.delayed(const Duration(milliseconds: 50));
          bloc.add(const RefreshQuestionsEvent());
        },
        expect: () => [
          QuestionRefreshing(questions: testQuestions),
          QuestionLoaded(questions: testQuestions),
          QuestionRefreshing(questions: testQuestions),
          QuestionLoaded(questions: testQuestions),
        ],
      );

      blocTest<QuestionBloc, QuestionState>(
        'Hata durumundan sonra başarılı refresh işlemi doğru şekilde işlenmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenThrow(Exception('First error'));
          return questionBloc;
        },
        seed: () => const QuestionError(message: 'Previous error'),
        act: (bloc) => bloc.add(const RefreshQuestionsEvent()),
        expect: () => [
          const QuestionLoading(),
          const QuestionError(message: 'Exception: First error'),
        ],
      );

      blocTest<QuestionBloc, QuestionState>(
        'Başarılı refresh işlemi doğru şekilde işlenmeli',
        build: () {
          when(() => mockGetQuestionsUseCase(any()))
              .thenAnswer((_) async => testQuestions);
          return questionBloc;
        },
        seed: () => const QuestionError(message: 'Previous error'),
        act: (bloc) => bloc.add(const RefreshQuestionsEvent()),
        expect: () => [
          const QuestionLoading(),
          QuestionLoaded(questions: testQuestions),
        ],
      );
    });
  });
}
