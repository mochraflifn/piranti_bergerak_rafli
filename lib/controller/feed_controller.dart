import 'package:flutter/material.dart';
import 'package:tes4/model/feed.dart';
import 'package:tes4/model/feed_repository.dart';

class FeedController extends ChangeNotifier {
  List<Feed> feeds = FeedRepository().fetch();

  int get length => feeds.length;

  Feed feed(int index) {
    return feeds[index];
  }

  // Status Like
  void like(Feed feed) {
    final updatedFeed = feeds.firstWhere((element) => element.id == feed.id);
    updatedFeed.content.isLike = !updatedFeed.content.isLike;
    notifyListeners();
  }

  // Refresh Feed
  void refresh() {
    feeds = FeedRepository().fetch();
    notifyListeners();
  }

  // Status Bookmark
  void toggleBookmark(Feed feed) { 
    final updatedFeed = feeds.firstWhere((element) => element.id == feed.id);
    updatedFeed.isBookmarked = !updatedFeed.isBookmarked;
    notifyListeners();
  }

  // List untuk yang dibookmark saja
  List<Feed> getBookmarkedFeeds() {
    return feeds.where((feed) => feed.isBookmarked).toList();
  }
}
