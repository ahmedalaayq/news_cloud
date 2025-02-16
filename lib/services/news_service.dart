import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=d99a7d96ba5c4944be08a8691bf1fe32&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      articlesList = articles
          .map((e) => ArticleModel(
                image: e['urlToImage'],
                title: e['title'],
                subtitle: e['description'],
                url: e['url'],
              ))
          .toList();
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
