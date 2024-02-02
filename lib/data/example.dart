import 'package:learning/models/feed.dart';
import 'package:learning/models/story.dart';

List<Story> stories = [
  const Story(name: 'Your Story', avatar: 'assets/images/avatar.png'),
  const Story(name: 'karennne', avatar: 'assets/images/avatar1.png'),
  const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
  const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
  const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
  const Story(name: 'karennne', avatar: 'assets/images/avatar1.png'),
  const Story(name: 'zackjohn', avatar: 'assets/images/avatar2.png'),
  const Story(name: 'kieron_d', avatar: 'assets/images/avatar3.png'),
  const Story(name: 'craig_love', avatar: 'assets/images/avatar4.png'),
];

List<Feed> feeds = [
  const Feed(
    name: 'joshua_l',
    avatar: 'assets/images/avatar1.png',
    address: 'Tokyo, Japan',
    images: ["assets/images/feed.png"],
    comment: "The game in Japan was amazing and I want to share some photos",
    totalLike: 44686,
    like: Like(name: "craig_love", avatar: "assets/images/avatar4.png"),
    isOfficial: true,
  ),
  const Feed(
    name: 'joshua_l',
    avatar: 'assets/images/avatar2.png',
    images: ["assets/images/feed.png"],
    address: 'Tokyo, Japan',
    comment: "The game in Japan was amazing and I want to share some photos",
    totalLike: 44686,
    like: Like(name: "craig_love", avatar: "assets/images/avatar4.png"),
  ),
  const Feed(
    name: 'joshua_l',
    avatar: 'assets/images/avatar3.png',
    images: ["assets/images/feed.png"],
    address: 'Tokyo, Japan',
    comment: "The game in Japan was amazing and I want to share some photos",
    totalLike: 44686,
    like: Like(name: "craig_love", avatar: "assets/images/avatar4.png"),
  ),
  const Feed(
    name: 'joshua_l',
    avatar: 'assets/images/avatar4.png',
    images: ["assets/images/feed.png"],
    address: 'Tokyo, Japan',
    comment: "The game in Japan was amazing and I want to share some photos",
    totalLike: 44686,
    like: Like(name: "craig_love", avatar: "assets/images/avatar4.png"),
  ),
];
