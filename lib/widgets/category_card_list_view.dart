import 'package:flutter/material.dart';
import 'package:news_app/constants/assets.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';
class CategoryCardListView extends StatelessWidget {
  const CategoryCardListView({
    super.key,
  });

  final List<CategoryModel> categories = const[
    CategoryModel(categoryName: 'Business', image: Assets.imagesBusiness),
    CategoryModel(
        categoryName: 'Entertainment', image: Assets.imagesEntertaiment),
    CategoryModel(categoryName: 'Health', image: Assets.imagesHealth),
    CategoryModel(categoryName: 'Science', image: Assets.imagesScience),
    CategoryModel(categoryName: 'Sports', image: Assets.imagesSports),
    CategoryModel(categoryName: 'Technology', image: Assets.imagesTechnology),
    CategoryModel(categoryName: 'General', image: Assets.imagesGeneral),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 90,
        child: ListView.builder(
      physics: BouncingScrollPhysics(),

            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoryCard(
                category: categories[index],
              );
            }),
      ),
    );
  }
}
