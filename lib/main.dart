import 'package:flutter/material.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized(); // ضروري للتأكد من تهيئة الـ WebView
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Cloud',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
