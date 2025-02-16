import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:CustomScrollView(
          slivers: [
            NewsListViewBuilder(newsCategory: 'business'),
          ],
        )
      ),
    );
  }
}