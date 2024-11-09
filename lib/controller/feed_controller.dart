import 'package:flutter/material.dart';
import 'package:tes4/model/feed.dart';
import 'package:tes4/model/feed_repository.dart';

class FeedController extends ChangeNotifier{
  List<Feed> feeds = FeedRepository().fetch();
  int get length => feeds.length;

  Feed feed( int index) {
    return feeds[index];
  }

  like (Feed feed){
    feeds.firstWhere(
      (element) => element.id == feed.id,
      ). content.isLike == !feed.content.isLike; notifyListeners();
  }

  refresh(){
    feeds = FeedRepository().fetch();
    notifyListeners();
  }
}