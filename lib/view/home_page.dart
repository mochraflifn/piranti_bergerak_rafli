import 'package:flutter/material.dart';
import 'package:tes4/controller/feed_controller.dart';
import 'package:tes4/view/feed_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var feedController = FeedController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GatoGram',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: feedController.feeds.length,
        itemBuilder: (context, index) =>
            FeedCard(feed: feedController.feeds[index]),
      ),
    );
  }
}
