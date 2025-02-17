class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;
  final String url;

  const ArticleModel(
      {required this.image,
      required this.title,
      required this.subtitle,
      required this.url});

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
        image: json['image'],
        title: json['title'],
        subtitle: json['description'],
        url: json['url']);
  }
}
