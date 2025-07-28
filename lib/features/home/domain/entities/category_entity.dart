import 'package:equatable/equatable.dart';
import 'package:hubx_case/features/home/domain/entities/image_entity.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String createdAt;
  final String updatedAt;
  final String publishedAt;
  final String title;
  final int rank;
  final ImageEntity image;

  const Category({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.title,
    required this.rank,
    required this.image,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        createdAt,
        updatedAt,
        publishedAt,
        title,
        rank,
        image,
      ];
}
