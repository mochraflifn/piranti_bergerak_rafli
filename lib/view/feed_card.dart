import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tes4/controller/feed_controller.dart';
import 'package:tes4/model/feed.dart';

class FeedCard extends StatefulWidget {
  final Feed feed;

  const FeedCard({
    super.key,
    required this.feed,
  });

  @override
  // ignore: library_private_types_in_public_api
  _FeedCardState createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  bool isLiked = false; // State to track if the post is liked
  bool isBookmarked = false; // State to track if the post is bookmarked

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.feed.user.avatar),
            ),
            title: Text(widget.feed.user.name),
            subtitle: Text(widget.feed.user.place),
            trailing: const Icon(Icons.arrow_right),
          ),
          // Content
          Image.network(
            widget.feed.content.image,
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
                        setState(() {
                          isLiked = !isLiked; // Toggle the like state
                        });
                        context.read<FeedController>().like(widget.feed);
                      },
                      icon: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_outline,
                        color:
                            isLiked ? Colors.red : Colors.grey, // Change color
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.comment),
                      onPressed: () {
                        // Comment button action
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.share),
                      onPressed: () {
                        // Share button action
                      },
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isBookmarked = !isBookmarked; // Toggle the bookmark state
                    });
                  },
                  icon: Icon(
                    isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    color: isBookmarked
                        ? Colors.blue
                        : Colors.grey, // Change color
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
                  '${widget.feed.content.likes} likes', // Display like count
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      widget.feed.user.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        widget.feed.content.description,
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
