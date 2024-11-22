class Feed {
  final int id;
  final User user;
  final Content content;
  bool isBookmarked; // New property to track whether a feed is bookmarked

  Feed({
    required this.id,
    required this.user,
    required this.content,
    this.isBookmarked = false, // Default value is false (not bookmarked)
  });
}

class Content {
  final String image;
  final String likes;
  final String description;
  bool isLike;

  Content({
    required this.image,
    required this.likes,
    required this.description,
    required this.isLike,
  });
}

class User {
  final String name;
  final String avatar;
  final String place;

  User({required this.name, required this.avatar, required this.place});
}
