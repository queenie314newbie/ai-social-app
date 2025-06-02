
import 'package:flutter/material.dart';

void main() {
  runApp(AISocialApp());
}

class AISocialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Social App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          VideoFeedScreen(),
          PhotoGridScreen(),
          AIButtonScreen(),
        ],
      ),
    );
  }
}

class VideoFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("TikTok-style Video Feed (Right-to-Left)"));
  }
}

class PhotoGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Instagram-style Photo Grid"));
  }
}

class AIButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Placeholder for AI Tool Integration
        },
        child: Text("Open AI Tools"),
      ),
    );
  }
}
