import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hubx_case/core/design_system/theme/hubx_padding.dart';
import 'package:hubx_case/core/custom_widgets/hubx_shimmer_widgets.dart';
import 'package:hubx_case/core/design_system/theme/hubx_sizes.dart';
import 'package:hubx_case/features/home/domain/entities/category_entity.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_bloc.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_event.dart';
import 'package:hubx_case/features/home/presentation/blocs/category_bloc/category_state.dart';
import 'package:hubx_case/features/home/presentation/widgets/category_card.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return _buildContent(context, state);
      },
    );
  }

  Widget _buildContent(BuildContext context, CategoryState state) {
    switch (state) {
      case CategoryLoading():
        return const CategoriesShimmerGrid();
      case CategoryLoaded():
        return CategoriesGrid(categories: state.categories);
      case CategoryRefreshing():
        return CategoriesGrid(categories: state.categories);
      case CategoryError():
        return CategoriesErrorWidget(message: state.message);
      case CategoryInitial():
        return const SizedBox.shrink();
    }
  }
}

class CategoriesGrid extends StatelessWidget {
  final List<Category> categories;

  const CategoriesGrid({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) {
      return Center(
        child: Text(
          'Henüz kategori bulunamadı',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      padding: HubxPadding.p16.horizontal + EdgeInsets.only(bottom: 32.h),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        crossAxisSpacing: HubxSizes.size16,
        mainAxisSpacing: HubxSizes.size16,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return CategoryCard(
          category: categories[index],
          onTap: () {
            debugPrint('Category tapped: ${categories[index].title}');
          },
        );
      },
    );
  }
}

class CategoriesShimmerGrid extends StatelessWidget {
  const CategoriesShimmerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: HubxPadding.p16.horizontal,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return const CategoryShimmerCard();
        },
      ),
    );
  }
}

class CategoryShimmerCard extends StatelessWidget {
  const CategoryShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        margin: HubxPadding.p4.all,
        child: const ShimmerBox(
          borderRadius: 12,
        ),
      ),
    );
  }
}

class CategoriesErrorWidget extends StatelessWidget {
  final String message;

  const CategoriesErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bir hata oluştu',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          8.verticalSpace,
          Text(
            message,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
          16.verticalSpace,
          ElevatedButton(
            onPressed: () {
              context.read<CategoryBloc>().add(const LoadCategoriesEvent());
            },
            child: const Text('Tekrar Dene'),
          ),
        ],
      ),
    );
  }
}
