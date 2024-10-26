import 'package:flutter/material.dart';
import 'package:tes4/view/feed_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OurApp', 
          style: TextStyle(fontWeight: FontWeight.bold),
          ), 
        ),
    body:ListView(
      children: const [
        FeedCard(),
        FeedCard(),
        FeedCard(),
        FeedCard(),
        FeedCard(),
      ],
    ),
    );
  }
}