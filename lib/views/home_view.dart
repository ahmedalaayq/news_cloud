import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_card_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: 'News', style: TextStyle(color: Colors.black)),
                TextSpan(text: 'Cloud', style: TextStyle(color: Colors.orange)),
              ]),
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CategoryCardListView(),
          NewsListViewBuilder(
            newsCategory: 'general',
          ),
        ],
      ),
    );
  }
}