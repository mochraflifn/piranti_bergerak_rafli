import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes4/controller/feed_controller.dart';
import 'package:tes4/view/feed_card.dart';

class FeedBookmarkPage extends StatelessWidget {
  const FeedBookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FeedController>();
    final bookmarkedFeeds = controller.getBookmarkedFeeds(); // Dapat hanya feed yang dibookmark

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Bookmark'),
      ),
      body: bookmarkedFeeds.isEmpty
          ? const Center(child: Text('Belum ada bang.'))
          : ListView.builder(
              itemCount: bookmarkedFeeds.length,
              itemBuilder: (context, index) {
                return FeedCard(feed: bookmarkedFeeds[index]);
              },
            ),
    );
  }
}
