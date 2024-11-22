<<<<<<< HEAD
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
=======
import 'package:tes4/model/feed.dart';

class FeedController {
  List<Feed> feeds = [
    Feed(
        user: User(
            name: 'Luv',
            avatar:
                'https://images.pexels.com/photos/22468584/pexels-photo-22468584/free-photo-of-wanita-perempuan-kaum-wanita-bunga-bunga.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            place: 'Asgar, Ibu Pertiwi'),
        content: Content(
            image:
                'https://images.pexels.com/photos/29070341/pexels-photo-29070341/free-photo-of-wanita-afrika-yang-anggun-dengan-payung-di-alam.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            likes: '666 likes',
            description: 'The Black One')),
    Feed(
        user: User(
            name: 'Luv Another',
            avatar:
                'https://images.pexels.com/photos/10414204/pexels-photo-10414204.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            place: 'Bandung, Ibu Pertiwi'),
        content: Content(
            image:
                'https://images.pexels.com/photos/29034031/pexels-photo-29034031/free-photo-of-domba-yang-tenang-merumput-di-padang-rumput-yang-subur.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            likes: '777 likes',
            description: 'The Goat')),
    Feed(
        user: User(
            name: 'Luv Someone',
            avatar:
                'https://images.pexels.com/photos/28609572/pexels-photo-28609572.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            place: 'Jakarta, Ibu Pertiwi'),
        content: Content(
            image:
                'https://images.pexels.com/photos/28905905/pexels-photo-28905905/free-photo-of-memancing-di-tepi-danau-musim-gugur-di-taman-yang-indah.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            likes: '888 likes',
            description: 'The Mancing')),
    Feed(
        user: User(
            name: 'Luv Yours',
            avatar:
                'https://images.pexels.com/photos/19748590/pexels-photo-19748590/free-photo-of-wanita-perempuan-kaum-wanita-terowongan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            place: 'Bogor, Ibu Pertiwi'),
        content: Content(
            image:
                'https://images.pexels.com/photos/9675789/pexels-photo-9675789.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            likes: '999 likes',
            description: 'The Anjing'))
  ];
>>>>>>> b6375bd5469e5876ed6485e0a519ba6a991b2fab
}
