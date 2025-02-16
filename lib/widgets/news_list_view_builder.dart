import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.newsCategory});
  final String newsCategory;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  Future<List<ArticleModel>>? future;
  @override
  void initState() {
    super.initState();
    future = NewsService().getNews(category:widget.newsCategory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            SliverFillRemaining(
              hasScrollBody: false,
              child: Text(
                'oops there was an error, try later',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            );
          }
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.deepPurpleAccent,
              ),
            ),
          );
        });
  }
}
