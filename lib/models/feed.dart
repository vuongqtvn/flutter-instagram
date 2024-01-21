class Feed {
  final String name;
  final String avatar;
  final String address;
  final String comment;
  final int totalLike;
  final List<String> images;
  final Like like;
  final bool isOfficial;

  const Feed({
    required this.name,
    required this.avatar,
    required this.address,
    required this.totalLike,
    required this.like,
    required this.comment,
    required this.images,
    this.isOfficial = false,
  });
}

class Like {
  final String name;
  final String avatar;

  const Like({
    required this.name,
    required this.avatar,
  });
}

class Comment {
  final String name;
  final String content;

  const Comment({
    required this.name,
    required this.content,
  });
}
