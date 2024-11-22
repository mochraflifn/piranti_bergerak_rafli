import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes4/controller/feed_controller.dart';
import 'package:tes4/model/feed.dart';

class FeedCard extends StatelessWidget {
  final Feed feed;

  const FeedCard({
    super.key,
    required this.feed,
  });

  @override
  Widget build(BuildContext context) {
    final feedController = context.watch<FeedController>();

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(feed.user.avatar),
            ),
            title: Text(feed.user.name),
            subtitle: Text(feed.user.place),
            trailing: const Icon(Icons.arrow_right),
          ),
          // Content
          Image.network(
            feed.content.image,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.8,
            fit: BoxFit.cover,
          ),
          // Footer
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        feedController.like(feed); // Untuk like action
                      },
                      icon: Icon(
                        feed.content.isLike
                            ? Icons.favorite
                            : Icons.favorite_outline,
                        color: feed.content.isLike ? Colors.red : Colors.black,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.comment),
                      onPressed: () {
                        // Comment
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: () {
                        // Share
                      },
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    feedController
                        .toggleBookmark(feed); // Toggle untuk bookmark
                  },
                  icon: Icon(
                    feed.isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    color: feed.isBookmarked ? Colors.blue : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  feed.content.likes,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      feed.user.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        feed.content.description,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
